# Variable para definir la región sobre la que se creará la infraestructura

variable "location" {
  type = string
  description = "Región de Azure donde crearemos la infraestructura"
  default = "West Europe"
}

# Variable para definir el tamaño de las máquinas virtual. Se han asignado 2 CPUs a cada máquina, 
# pero al realizar el despliegue, Azure ha creado las máquinas con 1 CPU por las limitaciones que tiene la cuenta de estudiante.

variable "vm_size" {
  type = string
  description = "Tamaño de la máquina virtual"
  default = "Standard_D1_v2" # 3.5 GB, 2 CPU 
}

# Variable para definir el nombre las máquinas virtuales que se crearán, 
# también se usa para saber cuantos por ejemplo cuantás NIC crear, cuantes IP Públicas, ...

variable "vms" {
  description = "Máquinas virtuales a crear"
  type = list(string)
  default = ["master","nfs","worker01","worker02"]
}
