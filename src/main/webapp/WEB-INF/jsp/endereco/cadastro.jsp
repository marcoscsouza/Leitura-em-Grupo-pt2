<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <div class="form-group">
      <label>Cep: </label>
      <div class="input-group">
        <input type="text" class="form-control" value="26155071" name="cep" />
        <button class="btn btn-dark" type="button">Buscar</button>
      </div>

      <label>Logradouro: </label>
      <input type="text" class="form-control" disabled value="logradouro" name="titulo">

      <label>Complemento: </label>
      <input type="text" class="form-control" disabled value="complemento" name="titulo">

      <label>Bairro: </label>
      <input type="text" class="form-control" disabled value="Bairro" name="Bairro">

      <label>Localidade: </label>
      <input type="text" class="form-control" disabled value="localidade" name="localidade">

      <label>UF: </label>
      <input type="text" class="form-control" disabled value="uf" name="uf">

    </div>