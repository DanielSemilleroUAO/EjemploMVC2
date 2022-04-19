/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import modelo.Rectangulo;

/**
 *
 * @author adseglocdom
 */
@WebServlet("/ServletControlador")
public class ServletControlador extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Procesar los parametros
        String accion = req.getParameter("accion");
        // Crear JavaBeans 
        Rectangulo rectangulo = new Rectangulo(1, 2);
        Rectangulo rectanguloSesion = new Rectangulo(3, 4);
        Rectangulo rectanguloAplicacion = new Rectangulo(5, 6);
        // Agregamos al javabean el alcance
        if ("agregarVariables".equals(accion)) {
            // alcance request
            req.setAttribute("rectanguloRequest", rectangulo);
            // alcance sesion
            HttpSession sesion = req.getSession();
            sesion.setAttribute("rectanguloSesion", rectanguloSesion);
            // alcance aplicacion
            ServletContext application = this.getServletContext();
            application.setAttribute("rectanguloAplicacion", rectanguloAplicacion);
            //Agregar mensaje requeest
            req.setAttribute("mensaje", "las variables fueron agregadas");
            
            req.getRequestDispatcher("index.jsp").forward(req, resp);
        } else if ("listarVariables".equals(accion)) {
           req.getRequestDispatcher("WEB-INF/alcanceVariables.jsp").forward(req, resp);
        } else {
            //Agregar mensaje requeest
            req.setAttribute("mensaje", "Accion no proporcionada o desconocida");
            // Propagar la info
            req.getRequestDispatcher("index.jsp").forward(req, resp);
            // ress.sendRedirect() no propaga los objetos resp y req
        }
    }

}
