
package br.com.correios.bsb.sigep.master.bean.cliente;

import javax.xml.ws.WebFault;


/**
 * This class was generated by Apache CXF 3.4.4
 * 2021-09-22T13:52:10.938-03:00
 * Generated source version: 3.4.4
 */

@WebFault(name = "SigepClienteException", targetNamespace = "http://cliente.bean.master.sigep.bsb.correios.com.br/")
public class SigepClienteException extends java.lang.Exception {

    private java.lang.String faultInfo;

    public SigepClienteException() {
        super();
    }

    public SigepClienteException(String message) {
        super(message);
    }

    public SigepClienteException(String message, java.lang.Throwable cause) {
        super(message, cause);
    }

    public SigepClienteException(String message, java.lang.String sigepClienteException) {
        super(message);
        this.faultInfo = sigepClienteException;
    }

    public SigepClienteException(String message, java.lang.String sigepClienteException, java.lang.Throwable cause) {
        super(message, cause);
        this.faultInfo = sigepClienteException;
    }

    public java.lang.String getFaultInfo() {
        return this.faultInfo;
    }
}
