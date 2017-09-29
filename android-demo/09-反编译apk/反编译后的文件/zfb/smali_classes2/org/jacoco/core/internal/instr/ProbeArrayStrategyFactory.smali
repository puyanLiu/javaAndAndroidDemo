.class public final Lorg/jacoco/core/internal/instr/ProbeArrayStrategyFactory;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFor(Lorg/objectweb/asm/ClassReader;Lorg/jacoco/core/runtime/IExecutionDataAccessorGenerator;)Lorg/jacoco/core/internal/instr/IProbeArrayStrategy;
    .locals 8

    const/4 v0, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lorg/objectweb/asm/ClassReader;->getClassName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lorg/objectweb/asm/ClassReader;->readShort(I)S

    move-result v6

    iget-object v2, p0, Lorg/objectweb/asm/ClassReader;->b:[B

    invoke-static {v2}, Lorg/jacoco/core/internal/data/CRC64;->checksum([B)J

    move-result-wide v2

    const/16 v4, 0x32

    if-lt v6, v4, :cond_0

    move v4, v0

    :goto_0
    invoke-virtual {p0}, Lorg/objectweb/asm/ClassReader;->getAccess()I

    move-result v7

    and-int/lit16 v7, v7, 0x200

    if-eqz v7, :cond_1

    :goto_1
    if-eqz v0, :cond_4

    new-instance v7, Lorg/jacoco/core/internal/instr/ProbeCounter;

    invoke-direct {v7}, Lorg/jacoco/core/internal/instr/ProbeCounter;-><init>()V

    new-instance v0, Lorg/jacoco/core/internal/flow/ClassProbesAdapter;

    invoke-direct {v0, v7, v5}, Lorg/jacoco/core/internal/flow/ClassProbesAdapter;-><init>(Lorg/jacoco/core/internal/flow/ClassProbesVisitor;Z)V

    invoke-virtual {p0, v0, v5}, Lorg/objectweb/asm/ClassReader;->accept(Lorg/objectweb/asm/ClassVisitor;I)V

    invoke-virtual {v7}, Lorg/jacoco/core/internal/instr/ProbeCounter;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/jacoco/core/internal/instr/NoneProbeArrayStrategy;

    invoke-direct {v0}, Lorg/jacoco/core/internal/instr/NoneProbeArrayStrategy;-><init>()V

    :goto_2
    return-object v0

    :cond_0
    move v4, v5

    goto :goto_0

    :cond_1
    move v0, v5

    goto :goto_1

    :cond_2
    const/16 v0, 0x34

    if-lt v6, v0, :cond_3

    invoke-virtual {v7}, Lorg/jacoco/core/internal/instr/ProbeCounter;->hasMethods()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lorg/jacoco/core/internal/instr/FieldProbeArrayStrategy;

    const/16 v5, 0x1019

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/jacoco/core/internal/instr/FieldProbeArrayStrategy;-><init>(Ljava/lang/String;JZILorg/jacoco/core/runtime/IExecutionDataAccessorGenerator;)V

    goto :goto_2

    :cond_3
    new-instance v0, Lorg/jacoco/core/internal/instr/LocalProbeArrayStrategy;

    invoke-virtual {v7}, Lorg/jacoco/core/internal/instr/ProbeCounter;->getCount()I

    move-result v4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/jacoco/core/internal/instr/LocalProbeArrayStrategy;-><init>(Ljava/lang/String;JILorg/jacoco/core/runtime/IExecutionDataAccessorGenerator;)V

    goto :goto_2

    :cond_4
    new-instance v0, Lorg/jacoco/core/internal/instr/FieldProbeArrayStrategy;

    const/16 v5, 0x109a

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/jacoco/core/internal/instr/FieldProbeArrayStrategy;-><init>(Ljava/lang/String;JZILorg/jacoco/core/runtime/IExecutionDataAccessorGenerator;)V

    goto :goto_2
.end method
