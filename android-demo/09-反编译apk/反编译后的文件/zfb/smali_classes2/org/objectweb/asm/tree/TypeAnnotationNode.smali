.class public Lorg/objectweb/asm/tree/TypeAnnotationNode;
.super Lorg/objectweb/asm/tree/AnnotationNode;


# instance fields
.field public typePath:Lorg/objectweb/asm/TypePath;

.field public typeRef:I


# direct methods
.method public constructor <init>(IILorg/objectweb/asm/TypePath;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p4}, Lorg/objectweb/asm/tree/AnnotationNode;-><init>(ILjava/lang/String;)V

    iput p2, p0, Lorg/objectweb/asm/tree/TypeAnnotationNode;->typeRef:I

    iput-object p3, p0, Lorg/objectweb/asm/tree/TypeAnnotationNode;->typePath:Lorg/objectweb/asm/TypePath;

    return-void
.end method

.method public constructor <init>(ILorg/objectweb/asm/TypePath;Ljava/lang/String;)V
    .locals 2

    const/high16 v0, 0x50000

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/objectweb/asm/tree/TypeAnnotationNode;-><init>(IILorg/objectweb/asm/TypePath;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/objectweb/asm/tree/TypeAnnotationNode;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method
