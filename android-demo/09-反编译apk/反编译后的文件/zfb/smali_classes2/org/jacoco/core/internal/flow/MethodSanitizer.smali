.class Lorg/jacoco/core/internal/flow/MethodSanitizer;
.super Lorg/objectweb/asm/commons/JSRInlinerAdapter;


# direct methods
.method constructor <init>(Lorg/objectweb/asm/MethodVisitor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8

    const/high16 v1, 0x50000

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/objectweb/asm/commons/JSRInlinerAdapter;-><init>(ILorg/objectweb/asm/MethodVisitor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public visitLineNumber(ILorg/objectweb/asm/Label;)V
    .locals 1

    iget-object v0, p2, Lorg/objectweb/asm/Label;->info:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->visitLineNumber(ILorg/objectweb/asm/Label;)V

    :cond_0
    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;I)V
    .locals 1

    iget-object v0, p4, Lorg/objectweb/asm/Label;->info:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p5, Lorg/objectweb/asm/Label;->info:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-super/range {p0 .. p6}, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;I)V

    :cond_0
    return-void
.end method
