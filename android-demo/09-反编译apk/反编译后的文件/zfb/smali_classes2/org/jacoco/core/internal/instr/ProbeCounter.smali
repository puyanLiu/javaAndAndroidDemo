.class Lorg/jacoco/core/internal/instr/ProbeCounter;
.super Lorg/jacoco/core/internal/flow/ClassProbesVisitor;


# instance fields
.field private a:I

.field private b:Z


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/jacoco/core/internal/flow/ClassProbesVisitor;-><init>()V

    iput v0, p0, Lorg/jacoco/core/internal/instr/ProbeCounter;->a:I

    iput-boolean v0, p0, Lorg/jacoco/core/internal/instr/ProbeCounter;->b:Z

    return-void
.end method


# virtual methods
.method getCount()I
    .locals 1

    iget v0, p0, Lorg/jacoco/core/internal/instr/ProbeCounter;->a:I

    return v0
.end method

.method hasMethods()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jacoco/core/internal/instr/ProbeCounter;->b:Z

    return v0
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jacoco/core/internal/flow/MethodProbesVisitor;
    .locals 1

    const-string/jumbo v0, "<clinit>"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/core/internal/instr/ProbeCounter;->b:Z

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/objectweb/asm/MethodVisitor;
    .locals 1

    invoke-virtual/range {p0 .. p5}, Lorg/jacoco/core/internal/instr/ProbeCounter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jacoco/core/internal/flow/MethodProbesVisitor;

    move-result-object v0

    return-object v0
.end method

.method public visitTotalProbeCount(I)V
    .locals 0

    iput p1, p0, Lorg/jacoco/core/internal/instr/ProbeCounter;->a:I

    return-void
.end method
