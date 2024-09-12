package com.lushnikova.model;

import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Builder
public class Formula {
    private int paramA;
    private int paramB;
    private int paramC;
}
