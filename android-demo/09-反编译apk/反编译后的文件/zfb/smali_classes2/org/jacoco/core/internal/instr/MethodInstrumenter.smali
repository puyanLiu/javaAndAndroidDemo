.class Lorg/jacoco/core/internal/instr/MethodInstrumenter;
.super Lorg/jacoco/core/internal/flow/MethodProbesVisitor;


# instance fields
.field private final a:Lorg/jacoco/core/internal/instr/IProbeInserter;


# direct methods
.method public constructor <init>(Lorg/objectweb/asm/MethodVisitor;Lorg/jacoco/core/internal/instr/IProbeInserter;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jacoco/core/internal/flow/MethodProbesVisitor;-><init>(Lorg/objectweb/asm/MethodVisitor;)V

    iput-object p2, p0, Lorg/jacoco/core/internal/instr/MethodInstrumenter;->a:Lorg/jacoco/core/internal/instr/IProbeInserter;

    return-void
.end method

.method private static a(Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;
    .locals 2

    invoke-static {p0}, Lorg/jacoco/core/internal/flow/LabelInfo;->getProbeId(Lorg/objectweb/asm/Label;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/jacoco/core/internal/flow/LabelInfo;->isDone(Lorg/objectweb/asm/Label;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lorg/jacoco/core/internal/flow/LabelInfo;->getIntermediateLabel(Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/objectweb/asm/Label;

    invoke-direct {v0}, Lorg/objectweb/asm/Label;-><init>()V

    invoke-static {p0, v0}, Lorg/jacoco/core/internal/flow/LabelInfo;->setIntermediateLabel(Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;)V

    invoke-static {p0}, Lorg/jacoco/core/internal/flow/LabelInfo;->setDone(Lorg/objectweb/asm/Label;)V

    move-object p0, v0

    goto :goto_0
.end method

.method private a(Lorg/objectweb/asm/Label;Lorg/jacoco/core/internal/flow/IFrame;)V
    .locals 3

    invoke-static {p1}, Lorg/jacoco/core/internal/flow/LabelInfo;->getProbeId(Lorg/objectweb/asm/Label;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {p1}, Lorg/jacoco/core/internal/flow/LabelInfo;->isDone(Lorg/objectweb/asm/Label;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/jacoco/core/internal/instr/MethodInstrumenter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-static {p1}, Lorg/jacoco/core/internal/flow/LabelInfo;->getIntermediateLabel(Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/MethodVisitor;->visitLabel(Lorg/objectweb/asm/Label;)V

    iget-object v1, p0, Lorg/jacoco/core/internal/instr/MethodInstrumenter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-interface {p2, v1}, Lorg/jacoco/core/internal/flow/IFrame;->accept(Lorg/objectweb/asm/MethodVisitor;)V

    iget-object v1, p0, Lorg/jacoco/core/internal/instr/MethodInstrumenter;->a:Lorg/jacoco/core/internal/instr/IProbeInserter;

    invoke-interface {v1, v0}, Lorg/jacoco/core/internal/instr/IProbeInserter;->insertProbe(I)V

    iget-object v0, p0, Lorg/jacoco/core/internal/instr/MethodInstrumenter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xa7

    invoke-virtual {v0, v1, p1}, Lorg/objectweb/asm/MethodVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    invoke-static {p1}, Lorg/jacoco/core/internal/flow/LabelInfo;->setDone(Lorg/objectweb/asm/Label;)V

    :cond_0
    return-void
.end method

.method private a(Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;Lorg/jacoco/core/internal/flow/IFrame;)V
    .locals 3

    invoke-static {p1}, Lorg/jacoco/core/internal/flow/LabelInfo;->resetDone(Lorg/objectweb/asm/Label;)V

    invoke-static {p2}, Lorg/jacoco/core/internal/flow/LabelInfo;->resetDone([Lorg/objectweb/asm/Label;)V

    invoke-direct {p0, p1, p3}, Lorg/jacoco/core/internal/instr/MethodInstrumenter;->a(Lorg/objectweb/asm/Label;Lorg/jacoco/core/internal/flow/IFrame;)V

    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p2, v0

    invoke-direct {p0, v2, p3}, Lorg/jacoco/core/internal/instr/MethodInstrumenter;->a(Lorg/objectweb/asm/Label;Lorg/jacoco/core/internal/flow/IFrame;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a([Lorg/objectweb/asm/Label;)[Lorg/objectweb/asm/Label;
    .locals 3

    array-length v0, p0

    new-array v1, v0, [Lorg/objectweb/asm/Label;

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    invoke-static {v2}, Lorg/jacoco/core/internal/instr/MethodInstrumenter;->a(Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public visitInsnWithProbe(II)V
    .locals 1

    iget-object v0, p0, Lorg/jacoco/core/internal/instr/MethodInstrumenter;->a:Lorg/jacoco/core/internal/instr/IProbeInserter;

    invoke-interface {v0, p2}, Lorg/jacoco/core/internal/instr/IProbeInserter;->insertProbe(I)V

    iget-object v0, p0, Lorg/jacoco/core/internal/instr/MethodInstrumenter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public visitJumpInsnWithProbe(ILorg/objectweb/asm/Label;ILorg/jacoco/core/internal/flow/IFrame;)V
    .locals 4

    const/16 v3, 0xa7

    if-ne p1, v3, :cond_0

    iget-object v0, p0, Lorg/jacoco/core/internal/instr/MethodInstrumenter;->a:Lorg/jacoco/core/internal/instr/IProbeInserter;

    invoke-interface {v0, p3}, Lorg/jacoco/core/internal/instr/IProbeInserter;->insertProbe(I)V

    iget-object v0, p0, Lorg/jacoco/core/internal/instr/MethodInstrumenter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, v3, p2}, Lorg/objectweb/asm/MethodVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lorg/objectweb/asm/Label;

    invoke-direct {v1}, Lorg/objectweb/asm/Label;-><init>()V

    iget-object v2, p0, Lorg/jacoco/core/internal/instr/MethodInstrumenter;->mv:Lorg/objectweb/asm/MethodVisitor;

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :sswitch_0
    const/16 v0, 0x9a

    :goto_1
    invoke-virtual {v2, v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    iget-object v0, p0, Lorg/jacoco/core/internal/instr/MethodInstrumenter;->a:Lorg/jacoco/core/internal/instr/IProbeInserter;

    invoke-interface {v0, p3}, Lorg/jacoco/core/internal/instr/IProbeInserter;->insertProbe(I)V

    iget-object v0, p0, Lorg/jacoco/core/internal/instr/MethodInstrumenter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, v3, p2}, Lorg/objectweb/asm/MethodVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    iget-object v0, p0, Lorg/jacoco/core/internal/instr/MethodInstrumenter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitLabel(Lorg/objectweb/asm/Label;)V

    iget-object v0, p0, Lorg/jacoco/core/internal/instr/MethodInstrumenter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-interface {p4, v0}, Lorg/jacoco/core/internal/flow/IFrame;->accept(Lorg/objectweb/asm/MethodVisitor;)V

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x99

    goto :goto_1

    :sswitch_2
    const/16 v0, 0x9c

    goto :goto_1

    :sswitch_3
    const/16 v0, 0x9b

    goto :goto_1

    :sswitch_4
    const/16 v0, 0x9e

    goto :goto_1

    :sswitch_5
    const/16 v0, 0x9d

    goto :goto_1

    :sswitch_6
    const/16 v0, 0xa0

    goto :goto_1

    :sswitch_7
    const/16 v0, 0x9f

    goto :goto_1

    :sswitch_8
    const/16 v0, 0xa2

    goto :goto_1

    :sswitch_9
    const/16 v0, 0xa1

    goto :goto_1

    :sswitch_a
    const/16 v0, 0xa4

    goto :goto_1

    :sswitch_b
    const/16 v0, 0xa3

    goto :goto_1

    :sswitch_c
    const/16 v0, 0xa6

    goto :goto_1

    :sswitch_d
    const/16 v0, 0xa5

    goto :goto_1

    :sswitch_e
    const/16 v0, 0xc7

    goto :goto_1

    :sswitch_f
    const/16 v0, 0xc6

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x99 -> :sswitch_0
        0x9a -> :sswitch_1
        0x9b -> :sswitch_2
        0x9c -> :sswitch_3
        0x9d -> :sswitch_4
        0x9e -> :sswitch_5
        0x9f -> :sswitch_6
        0xa0 -> :sswitch_7
        0xa1 -> :sswitch_8
        0xa2 -> :sswitch_9
        0xa3 -> :sswitch_a
        0xa4 -> :sswitch_b
        0xa5 -> :sswitch_c
        0xa6 -> :sswitch_d
        0xc6 -> :sswitch_e
        0xc7 -> :sswitch_f
    .end sparse-switch
.end method

.method public visitLookupSwitchInsnWithProbes(Lorg/objectweb/asm/Label;[I[Lorg/objectweb/asm/Label;Lorg/jacoco/core/internal/flow/IFrame;)V
    .locals 3

    invoke-static {p1}, Lorg/jacoco/core/internal/flow/LabelInfo;->resetDone(Lorg/objectweb/asm/Label;)V

    invoke-static {p3}, Lorg/jacoco/core/internal/flow/LabelInfo;->resetDone([Lorg/objectweb/asm/Label;)V

    invoke-static {p1}, Lorg/jacoco/core/internal/instr/MethodInstrumenter;->a(Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    move-result-object v0

    invoke-static {p3}, Lorg/jacoco/core/internal/instr/MethodInstrumenter;->a([Lorg/objectweb/asm/Label;)[Lorg/objectweb/asm/Label;

    move-result-object v1

    iget-object v2, p0, Lorg/jacoco/core/internal/instr/MethodInstrumenter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v2, v0, p2, v1}, Lorg/objectweb/asm/MethodVisitor;->visitLookupSwitchInsn(Lorg/objectweb/asm/Label;[I[Lorg/objectweb/asm/Label;)V

    invoke-direct {p0, p1, p3, p4}, Lorg/jacoco/core/internal/instr/MethodInstrumenter;->a(Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;Lorg/jacoco/core/internal/flow/IFrame;)V

    return-void
.end method

.method public visitProbe(I)V
    .locals 1

    iget-object v0, p0, Lorg/jacoco/core/internal/instr/MethodInstrumenter;->a:Lorg/jacoco/core/internal/instr/IProbeInserter;

    invoke-interface {v0, p1}, Lorg/jacoco/core/internal/instr/IProbeInserter;->insertProbe(I)V

    return-void
.end method

.method public visitTableSwitchInsnWithProbes(IILorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;Lorg/jacoco/core/internal/flow/IFrame;)V
    .locals 3

    invoke-static {p3}, Lorg/jacoco/core/internal/flow/LabelInfo;->resetDone(Lorg/objectweb/asm/Label;)V

    invoke-static {p4}, Lorg/jacoco/core/internal/flow/LabelInfo;->resetDone([Lorg/objectweb/asm/Label;)V

    invoke-static {p3}, Lorg/jacoco/core/internal/instr/MethodInstrumenter;->a(Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    move-result-object v0

    invoke-static {p4}, Lorg/jacoco/core/internal/instr/MethodInstrumenter;->a([Lorg/objectweb/asm/Label;)[Lorg/objectweb/asm/Label;

    move-result-object v1

    iget-object v2, p0, Lorg/jacoco/core/internal/instr/MethodInstrumenter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v2, p1, p2, v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitTableSwitchInsn(IILorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V

    invoke-direct {p0, p3, p4, p5}, Lorg/jacoco/core/internal/instr/MethodInstrumenter;->a(Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;Lorg/jacoco/core/internal/flow/IFrame;)V

    return-void
.end method
