.class Lorg/jacoco/core/internal/instr/NoneProbeArrayStrategy;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jacoco/core/internal/instr/IProbeArrayStrategy;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addMembers(Lorg/objectweb/asm/ClassVisitor;I)V
    .locals 0

    return-void
.end method

.method public storeInstance(Lorg/objectweb/asm/MethodVisitor;I)I
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
