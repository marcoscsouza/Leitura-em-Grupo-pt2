<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <div class="form-group">
        <label>Cep: </label>
      <input type="text" class="form-control" disabled value="${endereco.cep}" name="cep">

      <label>Logradouro: </label>
      <input type="text" class="form-control" disabled value="${endereco.logradouro}" name="titulo">

      <label>Complemento: </label>
      <input type="text" class="form-control" disabled value="${endereco.complemento}" name="titulo">

      <label>Bairro: </label>
      <input type="text" class="form-control" disabled value="${endereco.bairro}" name="Bairro">

      <label>Localidade: </label>
      <input type="text" class="form-control" disabled value="${endereco.localidade}" name="localidade">

      <label>UF: </label>
      <input type="text" class="form-control" disabled value="${endereco.uf}" name="uf">

    </div>