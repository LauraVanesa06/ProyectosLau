<form action="hacer.php"> <?php

                
                 if($_POST){
                    $regrso=$_POST['tipo'];
 
                    switch ($regrso) {
                        case "ida/regreso":
                            ?>
                                          <div class="mb-4">
                                      <label for="fechaida"><strong>Seleccione la fecha de patida</strong></label>
                                      <input type="date" class="form-control" name="fechaida" id="fechaida" required>
                                  </div>
                                  <br><br>
                                  <div class="mb-4" id="fecharegresoL">
                                      <label for="fecharegreso"><strong>Seleccione la fecha de regreso</strong></label>
                                      <input type="date" class="form-control" name="fecharegreso" id="fecharegreso">
                                  </div>
                                  <br><br>
                                  <?php
                            break;
                        case "sin regreso":
                            ?>
                            <div class="mb-4">
                        <label for="fechaida"><strong>Seleccione la fecha de patida</strong></label>
                        <input type="date" class="form-control" name="fechaida" id="fechaida" required>
                    </div>
                    <?php
                                    }
                 }

                ?>
                </div>
                <br>
                 
                <div class="d grid">
                    <button type="submit" class="btn btn-primary"> Finalizar reserva</button>
                </div>

                
                </form>
