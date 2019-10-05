package pl.jnowacki;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

@WebFilter(urlPatterns = {"/"})
public class LogingFilter implements Filter {
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        System.out.println("Przed servletem z filtra logującego");
        chain.doFilter(request, response);
        System.out.println("Po servlecie w filtrze logującym");
    }
}
