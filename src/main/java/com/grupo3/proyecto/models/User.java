package com.grupo3.proyecto.models;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@Entity
@Table(name = "users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank(message = "El Nombre no puede estar vacio")
    @Size(min = 5, message = "Nombre demasiado corto, 5 caracteres minimo")
    private String name;

    @NotBlank(message = "El email no puede estar vacio")
    @Email(message = "El email debe ser valido, ej. 'usuario@example.com'")
    private String email;

    @NotBlank
    @Size(min = 8, message = "La contraseña debe tener mínimo 8 caracteres")
    private String password;
    @Transient
    @NotBlank(message = "La confimacion de contraseña no puede estar vacia")
    private String passwordConfirmation;

    private boolean profesional;

    @Column(updatable = false)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date createdAt;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date updatedAt;

    @PrePersist
    protected void onCreate(){
        this.createdAt = new Date();
    }
    @PreUpdate
    protected void onUpdate(){
        this.updatedAt = new Date();
    }

    // Relacion uno a muchos
    @OneToMany(mappedBy="user", fetch = FetchType.LAZY)
    private List<Tarea> tareas;

    @OneToMany(mappedBy="user", fetch = FetchType.LAZY)
    private List<Bitacora> bitacoras;

    @OneToMany(mappedBy="user", fetch = FetchType.LAZY)
    private List<UserEmocion> emociones;
}
