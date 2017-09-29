.class public Lorg/jacoco/core/internal/flow/Instruction;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private b:I

.field private c:I

.field private d:Lorg/jacoco/core/internal/flow/Instruction;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/jacoco/core/internal/flow/Instruction;->a:I

    iput v0, p0, Lorg/jacoco/core/internal/flow/Instruction;->b:I

    iput v0, p0, Lorg/jacoco/core/internal/flow/Instruction;->c:I

    return-void
.end method


# virtual methods
.method public addBranch()V
    .locals 1

    iget v0, p0, Lorg/jacoco/core/internal/flow/Instruction;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jacoco/core/internal/flow/Instruction;->b:I

    return-void
.end method

.method public getBranches()I
    .locals 1

    iget v0, p0, Lorg/jacoco/core/internal/flow/Instruction;->b:I

    return v0
.end method

.method public getCoveredBranches()I
    .locals 1

    iget v0, p0, Lorg/jacoco/core/internal/flow/Instruction;->c:I

    return v0
.end method

.method public getLine()I
    .locals 1

    iget v0, p0, Lorg/jacoco/core/internal/flow/Instruction;->a:I

    return v0
.end method

.method public setCovered()V
    .locals 2

    :goto_0
    if-eqz p0, :cond_0

    iget v0, p0, Lorg/jacoco/core/internal/flow/Instruction;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/jacoco/core/internal/flow/Instruction;->c:I

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/jacoco/core/internal/flow/Instruction;->d:Lorg/jacoco/core/internal/flow/Instruction;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPredecessor(Lorg/jacoco/core/internal/flow/Instruction;)V
    .locals 0

    iput-object p1, p0, Lorg/jacoco/core/internal/flow/Instruction;->d:Lorg/jacoco/core/internal/flow/Instruction;

    invoke-virtual {p1}, Lorg/jacoco/core/internal/flow/Instruction;->addBranch()V

    return-void
.end method
