package nlu.web.project.entity;


import lombok.*;

import javax.persistence.*;


@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductImg {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String url;
    @ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JoinColumn(name = "product_id", nullable = false)
    @EqualsAndHashCode.Exclude
    @ToString.Exclude
    private Product product;

}
