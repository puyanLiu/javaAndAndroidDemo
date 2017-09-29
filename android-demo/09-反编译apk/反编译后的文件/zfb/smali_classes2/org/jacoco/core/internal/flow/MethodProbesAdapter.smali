.class public final Lorg/jacoco/core/internal/flow/MethodProbesAdapter;
.super Lorg/objectweb/asm/MethodVisitor;


# instance fields
.field private final a:Lorg/jacoco/core/internal/flow/MethodProbesVisitor;

.field private final b:Lorg/jacoco/core/internal/flow/IProbeIdGenerator;

.field private c:Lorg/objectweb/asm/commons/AnalyzerAdapter;


# direct methods
.method public constructor <init>(Lorg/jacoco/core/internal/flow/MethodProbesVisitor;Lorg/jacoco/core/internal/flow/IProbeIdGenerator;)V
    .locals 1

    const/high16 v0, 0x50000

    invoke-direct {p0, v0, p1}, Lorg/objectweb/asm/MethodVisitor;-><init>(ILorg/objectweb/asm/MethodVisitor;)V

    iput-object p1, p0, Lorg/jacoco/core/internal/flow/MethodProbesAdapter;->a:Lorg/jacoco/core/internal/flow/MethodProbesVisitor;

    iput-object p2, p0, Lorg/jacoco/core/internal/flow/MethodProbesAdapter;->b:Lorg/jacoco/core/internal/flow/IProbeIdGenerator;

    return-void
.end method

.method private a(I)Lorg/jacoco/core/internal/flow/IFrame;
    .locals 1

    iget-object v0, p0, Lorg/jacoco/core/internal/flow/MethodProbesAdapter;->c:Lorg/objectweb/asm/commons/AnalyzerAdapter;

    invoke-static {v0, p1}, Lorg/jacoco/core/internal/flow/FrameSnapshot;->create(Lorg/objectweb/asm/commons/AnalyzerAdapter;I)Lorg/jacoco/core/internal/flow/IFrame;

    move-result-object v0

    return-object v0
.end method

.method private a(Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p2}, Lorg/jacoco/core/internal/flow/LabelInfo;->resetDone([Lorg/objectweb/asm/Label;)V

    invoke-static {p1}, Lorg/jacoco/core/internal/flow/LabelInfo;->isMultiTarget(Lorg/objectweb/asm/Label;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/jacoco/core/internal/flow/MethodProbesAdapter;->b:Lorg/jacoco/core/internal/flow/IProbeIdGenerator;

    invoke-interface {v0}, Lorg/jacoco/core/internal/flow/IProbeIdGenerator;->nextId()I

    move-result v0

    invoke-static {p1, v0}, Lorg/jacoco/core/internal/flow/LabelInfo;->setProbeId(Lorg/objectweb/asm/Label;I)V

    move v0, v1

    :goto_0
    invoke-static {p1}, Lorg/jacoco/core/internal/flow/LabelInfo;->setDone(Lorg/objectweb/asm/Label;)V

    array-length v3, p2

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, p2, v2

    invoke-static {v4}, Lorg/jacoco/core/internal/flow/LabelInfo;->isMultiTarget(Lorg/objectweb/asm/Label;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Lorg/jacoco/core/internal/flow/LabelInfo;->isDone(Lorg/objectweb/asm/Label;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v0, p0, Lorg/jacoco/core/internal/flow/MethodProbesAdapter;->b:Lorg/jacoco/core/internal/flow/IProbeIdGenerator;

    invoke-interface {v0}, Lorg/jacoco/core/internal/flow/IProbeIdGenerator;->nextId()I

    move-result v0

    invoke-static {v4, v0}, Lorg/jacoco/core/internal/flow/LabelInfo;->setProbeId(Lorg/objectweb/asm/Label;I)V

    move v0, v1

    :cond_0
    invoke-static {v4}, Lorg/jacoco/core/internal/flow/LabelInfo;->setDone(Lorg/objectweb/asm/Label;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return v0

    :cond_2
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public final setAnalyzer(Lorg/objectweb/asm/commons/AnalyzerAdapter;)V
    .locals 0

    iput-object p1, p0, Lorg/jacoco/core/internal/flow/MethodProbesAdapter;->c:Lorg/objectweb/asm/commons/AnalyzerAdapter;

    return-void
.end method

.method public final visitInsn(I)V
    .locals 2

    sparse-switch p1, :sswitch_data_0

    iget-object v0, p0, Lorg/jacoco/core/internal/flow/MethodProbesAdapter;->a:Lorg/jacoco/core/internal/flow/MethodProbesVisitor;

    invoke-virtual {v0, p1}, Lorg/jacoco/core/internal/flow/MethodProbesVisitor;->visitInsn(I)V

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lorg/jacoco/core/internal/flow/MethodProbesAdapter;->a:Lorg/jacoco/core/internal/flow/MethodProbesVisitor;

    iget-object v1, p0, Lorg/jacoco/core/internal/flow/MethodProbesAdapter;->b:Lorg/jacoco/core/internal/flow/IProbeIdGenerator;

    invoke-interface {v1}, Lorg/jacoco/core/internal/flow/IProbeIdGenerator;->nextId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/jacoco/core/internal/flow/MethodProbesVisitor;->visitInsnWithProbe(II)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xac -> :sswitch_0
        0xad -> :sswitch_0
        0xae -> :sswitch_0
        0xaf -> :sswitch_0
        0xb0 -> :sswitch_0
        0xb1 -> :sswitch_0
        0xbf -> :sswitch_0
    .end sparse-switch
.end method

.method public final visitJumpInsn(ILorg/objectweb/asm/Label;)V
    .locals 3

    invoke-static {p2}, Lorg/jacoco/core/internal/flow/LabelInfo;->isMultiTarget(Lorg/objectweb/asm/Label;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/jacoco/core/internal/flow/MethodProbesAdapter;->a:Lorg/jacoco/core/internal/flow/MethodProbesVisitor;

    iget-object v0, p0, Lorg/jacoco/core/internal/flow/MethodProbesAdapter;->b:Lorg/jacoco/core/internal/flow/IProbeIdGenerator;

    invoke-interface {v0}, Lorg/jacoco/core/internal/flow/IProbeIdGenerator;->nextId()I

    move-result v2

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x2

    :goto_0
    invoke-direct {p0, v0}, Lorg/jacoco/core/internal/flow/MethodProbesAdapter;->a(I)Lorg/jacoco/core/internal/flow/IFrame;

    move-result-object v0

    invoke-virtual {v1, p1, p2, v2, v0}, Lorg/jacoco/core/internal/flow/MethodProbesVisitor;->visitJumpInsnWithProbe(ILorg/objectweb/asm/Label;ILorg/jacoco/core/internal/flow/IFrame;)V

    :goto_1
    return-void

    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jacoco/core/internal/flow/MethodProbesAdapter;->a:Lorg/jacoco/core/internal/flow/MethodProbesVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/jacoco/core/internal/flow/MethodProbesVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x99 -> :sswitch_1
        0x9a -> :sswitch_1
        0x9b -> :sswitch_1
        0x9c -> :sswitch_1
        0x9d -> :sswitch_1
        0x9e -> :sswitch_1
        0xa7 -> :sswitch_0
        0xc6 -> :sswitch_1
        0xc7 -> :sswitch_1
    .end sparse-switch
.end method

.method public final visitLabel(Lorg/objectweb/asm/Label;)V
    .locals 2

    invoke-static {p1}, Lorg/jacoco/core/internal/flow/LabelInfo;->isMultiTarget(Lorg/objectweb/asm/Label;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/jacoco/core/internal/flow/LabelInfo;->isSuccessor(Lorg/objectweb/asm/Label;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jacoco/core/internal/flow/MethodProbesAdapter;->a:Lorg/jacoco/core/internal/flow/MethodProbesVisitor;

    iget-object v1, p0, Lorg/jacoco/core/internal/flow/MethodProbesAdapter;->b:Lorg/jacoco/core/internal/flow/IProbeIdGenerator;

    invoke-interface {v1}, Lorg/jacoco/core/internal/flow/IProbeIdGenerator;->nextId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jacoco/core/internal/flow/MethodProbesVisitor;->visitProbe(I)V

    :cond_0
    iget-object v0, p0, Lorg/jacoco/core/internal/flow/MethodProbesAdapter;->a:Lorg/jacoco/core/internal/flow/MethodProbesVisitor;

    invoke-virtual {v0, p1}, Lorg/jacoco/core/internal/flow/MethodProbesVisitor;->visitLabel(Lorg/objectweb/asm/Label;)V

    return-void
.end method

.method public final visitLookupSwitchInsn(Lorg/objectweb/asm/Label;[I[Lorg/objectweb/asm/Label;)V
    .locals 2

    invoke-direct {p0, p1, p3}, Lorg/jacoco/core/internal/flow/MethodProbesAdapter;->a(Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jacoco/core/internal/flow/MethodProbesAdapter;->a:Lorg/jacoco/core/internal/flow/MethodProbesVisitor;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/jacoco/core/internal/flow/MethodProbesAdapter;->a(I)Lorg/jacoco/core/internal/flow/IFrame;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/jacoco/core/internal/flow/MethodProbesVisitor;->visitLookupSwitchInsnWithProbes(Lorg/objectweb/asm/Label;[I[Lorg/objectweb/asm/Label;Lorg/jacoco/core/internal/flow/IFrame;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/jacoco/core/internal/flow/MethodProbesAdapter;->a:Lorg/jacoco/core/internal/flow/MethodProbesVisitor;

    invoke-virtual {v0, p1, p2, p3}, Lorg/jacoco/core/internal/flow/MethodProbesVisitor;->visitLookupSwitchInsn(Lorg/objectweb/asm/Label;[I[Lorg/objectweb/asm/Label;)V

    goto :goto_0
.end method

.method public final varargs visitTableSwitchInsn(IILorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V
    .locals 6

    invoke-direct {p0, p3, p4}, Lorg/jacoco/core/internal/flow/MethodProbesAdapter;->a(Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jacoco/core/internal/flow/MethodProbesAdapter;->a:Lorg/jacoco/core/internal/flow/MethodProbesVisitor;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/jacoco/core/internal/flow/MethodProbesAdapter;->a(I)Lorg/jacoco/core/internal/flow/IFrame;

    move-result-object v5

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/jacoco/core/internal/flow/MethodProbesVisitor;->visitTableSwitchInsnWithProbes(IILorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;Lorg/jacoco/core/internal/flow/IFrame;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/jacoco/core/internal/flow/MethodProbesAdapter;->a:Lorg/jacoco/core/internal/flow/MethodProbesVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/jacoco/core/internal/flow/MethodProbesVisitor;->visitTableSwitchInsn(IILorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V

    goto :goto_0
.end method
