.class public Lorg/jacoco/core/internal/instr/ClassInstrumenter;
.super Lorg/jacoco/core/internal/flow/ClassProbesVisitor;


# instance fields
.field private final a:Lorg/jacoco/core/internal/instr/IProbeArrayStrategy;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/jacoco/core/internal/instr/IProbeArrayStrategy;Lorg/objectweb/asm/ClassVisitor;)V
    .locals 0

    invoke-direct {p0, p2}, Lorg/jacoco/core/internal/flow/ClassProbesVisitor;-><init>(Lorg/objectweb/asm/ClassVisitor;)V

    iput-object p1, p0, Lorg/jacoco/core/internal/instr/ClassInstrumenter;->a:Lorg/jacoco/core/internal/instr/IProbeArrayStrategy;

    return-void
.end method


# virtual methods
.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    iput-object p3, p0, Lorg/jacoco/core/internal/instr/ClassInstrumenter;->b:Ljava/lang/String;

    invoke-super/range {p0 .. p6}, Lorg/jacoco/core/internal/flow/ClassProbesVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/objectweb/asm/FieldVisitor;
    .locals 1

    iget-object v0, p0, Lorg/jacoco/core/internal/instr/ClassInstrumenter;->b:Ljava/lang/String;

    invoke-static {p2, v0}, Lorg/jacoco/core/internal/instr/InstrSupport;->assertNotInstrumented(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super/range {p0 .. p5}, Lorg/jacoco/core/internal/flow/ClassProbesVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/objectweb/asm/FieldVisitor;

    move-result-object v0

    return-object v0
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jacoco/core/internal/flow/MethodProbesVisitor;
    .locals 6

    iget-object v0, p0, Lorg/jacoco/core/internal/instr/ClassInstrumenter;->b:Ljava/lang/String;

    invoke-static {p2, v0}, Lorg/jacoco/core/internal/instr/InstrSupport;->assertNotInstrumented(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jacoco/core/internal/instr/ClassInstrumenter;->cv:Lorg/objectweb/asm/ClassVisitor;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/objectweb/asm/MethodVisitor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lorg/jacoco/core/internal/instr/DuplicateFrameEliminator;

    invoke-direct {v1, v0}, Lorg/jacoco/core/internal/instr/DuplicateFrameEliminator;-><init>(Lorg/objectweb/asm/MethodVisitor;)V

    new-instance v2, Lorg/jacoco/core/internal/instr/ProbeInserter;

    iget-object v0, p0, Lorg/jacoco/core/internal/instr/ClassInstrumenter;->a:Lorg/jacoco/core/internal/instr/IProbeArrayStrategy;

    invoke-direct {v2, p1, p3, v1, v0}, Lorg/jacoco/core/internal/instr/ProbeInserter;-><init>(ILjava/lang/String;Lorg/objectweb/asm/MethodVisitor;Lorg/jacoco/core/internal/instr/IProbeArrayStrategy;)V

    new-instance v0, Lorg/jacoco/core/internal/instr/MethodInstrumenter;

    invoke-direct {v0, v2, v2}, Lorg/jacoco/core/internal/instr/MethodInstrumenter;-><init>(Lorg/objectweb/asm/MethodVisitor;Lorg/jacoco/core/internal/instr/IProbeInserter;)V

    goto :goto_0
.end method

.method public bridge synthetic visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/objectweb/asm/MethodVisitor;
    .locals 1

    invoke-virtual/range {p0 .. p5}, Lorg/jacoco/core/internal/instr/ClassInstrumenter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jacoco/core/internal/flow/MethodProbesVisitor;

    move-result-object v0

    return-object v0
.end method

.method public visitTotalProbeCount(I)V
    .locals 2

    iget-object v0, p0, Lorg/jacoco/core/internal/instr/ClassInstrumenter;->a:Lorg/jacoco/core/internal/instr/IProbeArrayStrategy;

    iget-object v1, p0, Lorg/jacoco/core/internal/instr/ClassInstrumenter;->cv:Lorg/objectweb/asm/ClassVisitor;

    invoke-interface {v0, v1, p1}, Lorg/jacoco/core/internal/instr/IProbeArrayStrategy;->addMembers(Lorg/objectweb/asm/ClassVisitor;I)V

    return-void
.end method
