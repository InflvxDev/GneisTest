import { Component, OnInit } from '@angular/core';
import { ReservaService } from '../../../Services/reserva.service';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { Reserva } from 'src/app/Models/reserva';
import { VerinfoReservaComponent } from '../verinfo-reserva/verinfo-reserva.component';
import { CancelarReservaComponent } from '../cancelar-reserva/cancelar-reserva.component';
import { RegistroEntradaComponent } from '../registro-entrada/registro-entrada.component';
import { SignalRService } from '../../../Services/signal-r.service';

@Component({
  selector: 'app-registro-check-in',
  templateUrl: './registro-check-in.component.html',
  styleUrls: ['./registro-check-in.component.css']
})
export class RegistroCheckInComponent implements OnInit {
  searchreserva: string;
  reservas : Reserva[];
  constructor(private reservaService : ReservaService,private modalService : NgbModal, private signalRService : SignalRService) { }

  ngOnInit(): void {
    this.consultar();
    this. signal();
  }
  
  consultar(){
    this.reservaService.gets().subscribe(result =>{
      this.reservas = result;
    });
  }

  Verinfo(reserva : Reserva){
    const menssageBox = this.modalService.open(VerinfoReservaComponent);
    menssageBox.componentInstance.reservamostrar= reserva;
  }

  checkin(reserva : Reserva){
    const menssageBox = this.modalService.open(RegistroEntradaComponent);
    menssageBox.componentInstance.reserva= reserva;
  }

  Cancelar(reserva : Reserva){
    const menssageBox = this.modalService.open(CancelarReservaComponent);
    menssageBox.componentInstance.reservamostrar= reserva;
  }

  signal(){
    this.signalRService.signalReceived.subscribe((reserva : Reserva)=>{
      this.reservas.push(reserva);
    })
  }
}
