.class public final Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;
.super Lorg/objectweb/asm/MethodVisitor;


# instance fields
.field first:Z

.field successor:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x50000

    invoke-direct {p0, v0}, Lorg/objectweb/asm/MethodVisitor;-><init>(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->first:Z

    return-void
.end method

.method private static a(Lorg/objectweb/asm/Label;)V
    .locals 1

    invoke-static {p0}, Lorg/jacoco/core/internal/flow/LabelInfo;->isDone(Lorg/objectweb/asm/Label;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/jacoco/core/internal/flow/LabelInfo;->setTarget(Lorg/objectweb/asm/Label;)V

    invoke-static {p0}, Lorg/jacoco/core/internal/flow/LabelInfo;->setDone(Lorg/objectweb/asm/Label;)V

    :cond_0
    return-void
.end method

.method private a(Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V
    .locals 4

    const/4 v1, 0x0

    invoke-static {p1}, Lorg/jacoco/core/internal/flow/LabelInfo;->resetDone(Lorg/objectweb/asm/Label;)V

    invoke-static {p2}, Lorg/jacoco/core/internal/flow/LabelInfo;->resetDone([Lorg/objectweb/asm/Label;)V

    invoke-static {p1}, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->a(Lorg/objectweb/asm/Label;)V

    array-length v2, p2

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p2, v0

    invoke-static {v3}, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->a(Lorg/objectweb/asm/Label;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    iput-boolean v1, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->first:Z

    return-void
.end method

.method public static markLabels(Lorg/objectweb/asm/tree/MethodNode;)V
    .locals 3

    new-instance v2, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;

    invoke-direct {v2}, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;-><init>()V

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/TryCatchBlockNode;

    invoke-virtual {v0, v2}, Lorg/objectweb/asm/tree/TryCatchBlockNode;->accept(Lorg/objectweb/asm/MethodVisitor;)V

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v0, v2}, Lorg/objectweb/asm/tree/InsnList;->accept(Lorg/objectweb/asm/MethodVisitor;)V

    return-void
.end method


# virtual methods
.method public final visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->first:Z

    return-void
.end method

.method public final visitIincInsn(II)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->first:Z

    return-void
.end method

.method public final visitInsn(I)V
    .locals 2

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    :goto_0
    iput-boolean v1, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->first:Z

    return-void

    :sswitch_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Subroutines not supported."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :sswitch_1
    iput-boolean v1, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xa9 -> :sswitch_0
        0xac -> :sswitch_1
        0xad -> :sswitch_1
        0xae -> :sswitch_1
        0xaf -> :sswitch_1
        0xb0 -> :sswitch_1
        0xb1 -> :sswitch_1
        0xbf -> :sswitch_1
    .end sparse-switch
.end method

.method public final visitIntInsn(II)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->first:Z

    return-void
.end method

.method public final varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->first:Z

    return-void
.end method

.method public final visitJumpInsn(ILorg/objectweb/asm/Label;)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {p2}, Lorg/jacoco/core/internal/flow/LabelInfo;->setTarget(Lorg/objectweb/asm/Label;)V

    const/16 v0, 0xa8

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Subroutines not supported."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    const/16 v0, 0xa7

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    iput-boolean v1, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->first:Z

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final visitLabel(Lorg/objectweb/asm/Label;)V
    .locals 1

    iget-boolean v0, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->first:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/jacoco/core/internal/flow/LabelInfo;->setTarget(Lorg/objectweb/asm/Label;)V

    :cond_0
    iget-boolean v0, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lorg/jacoco/core/internal/flow/LabelInfo;->setSuccessor(Lorg/objectweb/asm/Label;)V

    :cond_1
    return-void
.end method

.method public final visitLdcInsn(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->first:Z

    return-void
.end method

.method public final visitLookupSwitchInsn(Lorg/objectweb/asm/Label;[I[Lorg/objectweb/asm/Label;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->a(Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V

    return-void
.end method

.method public final visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->first:Z

    return-void
.end method

.method public final visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->first:Z

    return-void
.end method

.method public final varargs visitTableSwitchInsn(IILorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V
    .locals 0

    invoke-direct {p0, p3, p4}, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->a(Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V

    return-void
.end method

.method public final visitTryCatchBlock(Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lorg/jacoco/core/internal/flow/LabelInfo;->setTarget(Lorg/objectweb/asm/Label;)V

    invoke-static {p3}, Lorg/jacoco/core/internal/flow/LabelInfo;->setTarget(Lorg/objectweb/asm/Label;)V

    return-void
.end method

.method public final visitTypeInsn(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->first:Z

    return-void
.end method

.method public final visitVarInsn(II)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->first:Z

    return-void
.end method
