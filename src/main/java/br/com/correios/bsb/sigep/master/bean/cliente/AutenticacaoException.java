
package br.com.correios.bsb.sigep.master.bean.cliente;

import javax.xml.ws.WebFault;


/**
 * This class was generated by Apache CXF 3.4.4
 * 2021-09-22T13:52:10.959-03:00
 * Generated source version: 3.4.4
 */

@WebFault(name = "AutenticacaoException", targetNamespace = "http://cliente.bean.master.sigep.bsb.correios.com.br/")
public class AutenticacaoException extends java.lang.Exception {

    private java.lang.String faultInfo;

    public AutenticacaoException() {
        super();
    }

    public AutenticacaoException(String message) {
        super(message);
    }

    public AutenticacaoException(String message, java.lang.Throwable cause) {
        super(message, cause);
    }

    public AutenticacaoException(String message, java.lang.String autenticacaoException) {
        super(message);
        this.faultInfo = autenticacaoException;
    }

    public AutenticacaoException(String message, java.lang.String autenticacaoException, java.lang.Throwable cause) {
        super(message, cause);
        this.faultInfo = autenticacaoException;
    }

    public java.lang.String getFaultInfo() {
        return this.faultInfo;
    }
}
