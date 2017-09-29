.class public final Lorg/jacoco/core/internal/flow/LabelInfo;
.super Ljava/lang/Object;


# static fields
.field public static final NO_PROBE:I = -0x1


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:I

.field private f:Lorg/objectweb/asm/Label;

.field private g:Lorg/jacoco/core/internal/flow/Instruction;


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lorg/jacoco/core/internal/flow/LabelInfo;->a:Z

    iput-boolean v0, p0, Lorg/jacoco/core/internal/flow/LabelInfo;->b:Z

    iput-boolean v0, p0, Lorg/jacoco/core/internal/flow/LabelInfo;->c:Z

    iput-boolean v0, p0, Lorg/jacoco/core/internal/flow/LabelInfo;->d:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/jacoco/core/internal/flow/LabelInfo;->e:I

    iput-object v1, p0, Lorg/jacoco/core/internal/flow/LabelInfo;->f:Lorg/objectweb/asm/Label;

    iput-object v1, p0, Lorg/jacoco/core/internal/flow/LabelInfo;->g:Lorg/jacoco/core/internal/flow/Instruction;

    return-void
.end method

.method private static a(Lorg/objectweb/asm/Label;)Lorg/jacoco/core/internal/flow/LabelInfo;
    .locals 2

    iget-object v0, p0, Lorg/objectweb/asm/Label;->info:Ljava/lang/Object;

    instance-of v1, v0, Lorg/jacoco/core/internal/flow/LabelInfo;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/jacoco/core/internal/flow/LabelInfo;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lorg/objectweb/asm/Label;)Lorg/jacoco/core/internal/flow/LabelInfo;
    .locals 1

    invoke-static {p0}, Lorg/jacoco/core/internal/flow/LabelInfo;->a(Lorg/objectweb/asm/Label;)Lorg/jacoco/core/internal/flow/LabelInfo;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/jacoco/core/internal/flow/LabelInfo;

    invoke-direct {v0}, Lorg/jacoco/core/internal/flow/LabelInfo;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/Label;->info:Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static getInstruction(Lorg/objectweb/asm/Label;)Lorg/jacoco/core/internal/flow/Instruction;
    .locals 1

    invoke-static {p0}, Lorg/jacoco/core/internal/flow/LabelInfo;->a(Lorg/objectweb/asm/Label;)Lorg/jacoco/core/internal/flow/LabelInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lorg/jacoco/core/internal/flow/LabelInfo;->g:Lorg/jacoco/core/internal/flow/Instruction;

    goto :goto_0
.end method

.method public static getIntermediateLabel(Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;
    .locals 1

    invoke-static {p0}, Lorg/jacoco/core/internal/flow/LabelInfo;->a(Lorg/objectweb/asm/Label;)Lorg/jacoco/core/internal/flow/LabelInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lorg/jacoco/core/internal/flow/LabelInfo;->f:Lorg/objectweb/asm/Label;

    goto :goto_0
.end method

.method public static getProbeId(Lorg/objectweb/asm/Label;)I
    .locals 1

    invoke-static {p0}, Lorg/jacoco/core/internal/flow/LabelInfo;->a(Lorg/objectweb/asm/Label;)Lorg/jacoco/core/internal/flow/LabelInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, v0, Lorg/jacoco/core/internal/flow/LabelInfo;->e:I

    goto :goto_0
.end method

.method public static isDone(Lorg/objectweb/asm/Label;)Z
    .locals 1

    invoke-static {p0}, Lorg/jacoco/core/internal/flow/LabelInfo;->a(Lorg/objectweb/asm/Label;)Lorg/jacoco/core/internal/flow/LabelInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, v0, Lorg/jacoco/core/internal/flow/LabelInfo;->d:Z

    goto :goto_0
.end method

.method public static isMultiTarget(Lorg/objectweb/asm/Label;)Z
    .locals 1

    invoke-static {p0}, Lorg/jacoco/core/internal/flow/LabelInfo;->a(Lorg/objectweb/asm/Label;)Lorg/jacoco/core/internal/flow/LabelInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, v0, Lorg/jacoco/core/internal/flow/LabelInfo;->b:Z

    goto :goto_0
.end method

.method public static isSuccessor(Lorg/objectweb/asm/Label;)Z
    .locals 1

    invoke-static {p0}, Lorg/jacoco/core/internal/flow/LabelInfo;->a(Lorg/objectweb/asm/Label;)Lorg/jacoco/core/internal/flow/LabelInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, v0, Lorg/jacoco/core/internal/flow/LabelInfo;->c:Z

    goto :goto_0
.end method

.method public static resetDone(Lorg/objectweb/asm/Label;)V
    .locals 2

    invoke-static {p0}, Lorg/jacoco/core/internal/flow/LabelInfo;->a(Lorg/objectweb/asm/Label;)Lorg/jacoco/core/internal/flow/LabelInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/jacoco/core/internal/flow/LabelInfo;->d:Z

    :cond_0
    return-void
.end method

.method public static resetDone([Lorg/objectweb/asm/Label;)V
    .locals 3

    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p0, v0

    invoke-static {v2}, Lorg/jacoco/core/internal/flow/LabelInfo;->resetDone(Lorg/objectweb/asm/Label;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setDone(Lorg/objectweb/asm/Label;)V
    .locals 2

    invoke-static {p0}, Lorg/jacoco/core/internal/flow/LabelInfo;->b(Lorg/objectweb/asm/Label;)Lorg/jacoco/core/internal/flow/LabelInfo;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/jacoco/core/internal/flow/LabelInfo;->d:Z

    return-void
.end method

.method public static setInstruction(Lorg/objectweb/asm/Label;Lorg/jacoco/core/internal/flow/Instruction;)V
    .locals 1

    invoke-static {p0}, Lorg/jacoco/core/internal/flow/LabelInfo;->b(Lorg/objectweb/asm/Label;)Lorg/jacoco/core/internal/flow/LabelInfo;

    move-result-object v0

    iput-object p1, v0, Lorg/jacoco/core/internal/flow/LabelInfo;->g:Lorg/jacoco/core/internal/flow/Instruction;

    return-void
.end method

.method public static setIntermediateLabel(Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;)V
    .locals 1

    invoke-static {p0}, Lorg/jacoco/core/internal/flow/LabelInfo;->b(Lorg/objectweb/asm/Label;)Lorg/jacoco/core/internal/flow/LabelInfo;

    move-result-object v0

    iput-object p1, v0, Lorg/jacoco/core/internal/flow/LabelInfo;->f:Lorg/objectweb/asm/Label;

    return-void
.end method

.method public static setProbeId(Lorg/objectweb/asm/Label;I)V
    .locals 1

    invoke-static {p0}, Lorg/jacoco/core/internal/flow/LabelInfo;->b(Lorg/objectweb/asm/Label;)Lorg/jacoco/core/internal/flow/LabelInfo;

    move-result-object v0

    iput p1, v0, Lorg/jacoco/core/internal/flow/LabelInfo;->e:I

    return-void
.end method

.method public static setSuccessor(Lorg/objectweb/asm/Label;)V
    .locals 3

    const/4 v2, 0x1

    invoke-static {p0}, Lorg/jacoco/core/internal/flow/LabelInfo;->b(Lorg/objectweb/asm/Label;)Lorg/jacoco/core/internal/flow/LabelInfo;

    move-result-object v0

    iput-boolean v2, v0, Lorg/jacoco/core/internal/flow/LabelInfo;->c:Z

    iget-boolean v1, v0, Lorg/jacoco/core/internal/flow/LabelInfo;->a:Z

    if-eqz v1, :cond_0

    iput-boolean v2, v0, Lorg/jacoco/core/internal/flow/LabelInfo;->b:Z

    :cond_0
    return-void
.end method

.method public static setTarget(Lorg/objectweb/asm/Label;)V
    .locals 3

    const/4 v2, 0x1

    invoke-static {p0}, Lorg/jacoco/core/internal/flow/LabelInfo;->b(Lorg/objectweb/asm/Label;)Lorg/jacoco/core/internal/flow/LabelInfo;

    move-result-object v0

    iget-boolean v1, v0, Lorg/jacoco/core/internal/flow/LabelInfo;->a:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lorg/jacoco/core/internal/flow/LabelInfo;->c:Z

    if-eqz v1, :cond_1

    :cond_0
    iput-boolean v2, v0, Lorg/jacoco/core/internal/flow/LabelInfo;->b:Z

    :goto_0
    return-void

    :cond_1
    iput-boolean v2, v0, Lorg/jacoco/core/internal/flow/LabelInfo;->a:Z

    goto :goto_0
.end method
