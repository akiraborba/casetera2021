create.tera.data <- function(q1){
        q2 <- sqrt(rnorm(15, 3, 1)*q1)
        q2[q2 > 5] <- 5
        q2[q2 < 1] <- 1
        q3 <- q2 + 2 + rnorm(15)
        q3[q3 > 5] <- 5
        q3[q3 < 1] <- 1
        q4 <- rnorm(15, 3, 1)
        q4[q4 > 5] <- 5
        q4[q4 < 1] <- 1
        q5 <- q4 + 2 + rnorm(15)
        q5[q5 > 5] <- 5
        q5[q5 < 0] <- 0
        q6 <- rnorm(15, 3, 1)
        q6[q6 > 5] <- 5
        q6[q6 < 1] <- 1
        q7 <- q6 + 2 + rnorm(15)
        q7[q7 > 5] <- 5
        q7[q7 < 1] <- 1
        q8 <- rnorm(15, 5, 2)
        q8[q8 > 10] <- 10
        q8[q8 < 0] <- 0
        q9 <- q8/2 + rnorm(15)
        q9[q9 > 5] <- 5
        q9[q9 < 1] <- 1
        q10 <- 5 - ((q2 + q4 + q6)/3 + rnorm(15))
        q10[q10 > 5] <- 5
        q10[q10 < 1] <- 1
        q11 <- rnorm(15, 3, 1)
        q11[q11 > 5] <- 5
        q11[q11 < 0] <- 0
        q12 <- 2*((((q3 - q2) +(q5 - q4) + (q7 - q6))/3 + q9 - (3 - q10)  -(5 - q11))) + rnorm(15, 3, 1) + 1
        q12[q12 > 10] <- 10
        q12[q12 < 1] <- 1
        data <- data.frame(
                "energia" = q1,
                "conhecimento1" = q2,
                "aprendizado1" = q3,
                "conhecimento2" = q4,
                "aprendizado2" = q5,
                "conhecimento3" = q6,
                "apendizado3" = q7,
                "horasestudo" = q8,
                "relevancia" = q9,
                "ritmo" = q10,
                "equilibrio" = q11,
                "satisfacao" = q12)
        data}

set.seed(344)
q1.1 <- rnorm(15, 3, 1)
q1.1[q1.1 > 5] <- 5
q1.1[q1.1 < 0] <- 0
data.turma1 <- create.tera.data(q1.1)

set.seed(344)
q1.2 <- rnorm(15, 3, 1)
q1.2[q1.2 > 5] <- 5
q1.2[q1.2 < 0] <- 0
data.turma2 <- create.tera.data(q1.2)

set.seed(930)
q1.3 <- rnorm(15, 3, 1)
q1.3[q1.3 > 5] <- 5
q1.3[q1.3 < 0] <- 0
data.turma3 <- create.tera.data(q1.3)

set.seed(93454)
q1.4 <- rnorm(15, 3, 1)
q1.4[q1.4 > 5] <- 5
q1.4[q1.4 < 0] <- 0
data.turma4 <- create.tera.data(q1.4)

set.seed(934765)
q1.5 <- rnorm(15, 3, 1)
q1.5[q1.5 > 5] <- 5
q1.5[q1.5 < 0] <- 0
data.turma5 <- create.tera.data(q1.5)

set.seed(9309875)
q1.6 <- rnorm(15, 3, 1)
q1.6[q1.6 > 5] <- 5
q1.6[q1.6 < 0] <- 0
data.turma6 <- create.tera.data(q1.6)

dadosturmas <- rbind(data.turma1, data.turma2, data.turma3, data.turma4, data.turma5, data.turma6)
dadosturmas$turma <- rep(c("violeta", "azul", "verde", "amarelo", "laranja", "vermelho"), each = 15)
dadosturmas <- write.csv(dadosturmas, "dadosturmastera.csv")
