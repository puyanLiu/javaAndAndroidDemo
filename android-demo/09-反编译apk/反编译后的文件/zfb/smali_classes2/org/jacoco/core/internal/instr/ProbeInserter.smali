.class Lorg/jacoco/core/internal/instr/ProbeInserter;
.super Lorg/objectweb/asm/MethodVisitor;

# interfaces
.implements Lorg/jacoco/core/internal/instr/IProbeInserter;


# instance fields
.field private final a:Lorg/jacoco/core/internal/instr/IProbeArrayStrategy;

.field private final b:I

.field private c:I


# direct methods
.method constructor <init>(ILjava/lang/String;Lorg/objectweb/asm/MethodVisitor;Lorg/jacoco/core/internal/instr/IProbeArrayStrategy;)V
    .locals 5

    const/4 v1, 0x0

    const/high16 v0, 0x50000

    invoke-direct {p0, v0, p3}, Lorg/objectweb/asm/MethodVisitor;-><init>(ILorg/objectweb/asm/MethodVisitor;)V

    iput-object p4, p0, Lorg/jacoco/core/internal/instr/ProbeInserter;->a:Lorg/jacoco/core/internal/instr/IProbeArrayStrategy;

    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p2}, Lorg/objectweb/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/objectweb/asm/Type;

    move-result-object v2

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    invoke-virtual {v4}, Lorg/objectweb/asm/Type;->getSize()I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iput v0, p0, Lorg/jacoco/core/internal/instr/ProbeInserter;->b:I

    return-void
.end method

.method private a(I)I
    .locals 1

    iget v0, p0, Lorg/jacoco/core/internal/instr/ProbeInserter;->b:I

    if-ge p1, v0, :cond_0

    :goto_0
    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public insertProbe(I)V
    .locals 3

    iget-object v0, p0, Lorg/jacoco/core/internal/instr/ProbeInserter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x19

    iget v2, p0, Lorg/jacoco/core/internal/instr/ProbeInserter;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    iget-object v0, p0, Lorg/jacoco/core/internal/instr/ProbeInserter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-static {v0, p1}, Lorg/jacoco/core/internal/instr/InstrSupport;->push(Lorg/objectweb/asm/MethodVisitor;I)V

    iget-object v0, p0, Lorg/jacoco/core/internal/instr/ProbeInserter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    iget-object v0, p0, Lorg/jacoco/core/internal/instr/ProbeInserter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public visitCode()V
    .locals 3

    iget-object v0, p0, Lorg/jacoco/core/internal/instr/ProbeInserter;->a:Lorg/jacoco/core/internal/instr/IProbeArrayStrategy;

    iget-object v1, p0, Lorg/jacoco/core/internal/instr/ProbeInserter;->mv:Lorg/objectweb/asm/MethodVisitor;

    iget v2, p0, Lorg/jacoco/core/internal/instr/ProbeInserter;->b:I

    invoke-interface {v0, v1, v2}, Lorg/jacoco/core/internal/instr/IProbeArrayStrategy;->storeInstance(Lorg/objectweb/asm/MethodVisitor;I)I

    move-result v0

    iput v0, p0, Lorg/jacoco/core/internal/instr/ProbeInserter;->c:I

    iget-object v0, p0, Lorg/jacoco/core/internal/instr/ProbeInserter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0}, Lorg/objectweb/asm/MethodVisitor;->visitCode()V

    return-void
.end method

.method public final visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ClassReader.accept() should be called with EXPAND_FRAMES flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v1, p0, Lorg/jacoco/core/internal/instr/ProbeInserter;->b:I

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    move v2, v0

    move v4, v0

    :goto_0
    if-lt v4, p2, :cond_1

    iget v1, p0, Lorg/jacoco/core/internal/instr/ProbeInserter;->b:I

    if-gt v0, v1, :cond_6

    :cond_1
    iget v1, p0, Lorg/jacoco/core/internal/instr/ProbeInserter;->b:I

    if-ne v0, v1, :cond_2

    add-int/lit8 v1, v2, 0x1

    const-string/jumbo v5, "[Z"

    aput-object v5, v3, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_2
    if-ge v4, p2, :cond_5

    add-int/lit8 v5, v4, 0x1

    aget-object v4, p3, v4

    add-int/lit8 v1, v2, 0x1

    aput-object v4, v3, v2

    add-int/lit8 v0, v0, 0x1

    sget-object v2, Lorg/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-eq v4, v2, :cond_3

    sget-object v2, Lorg/objectweb/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-ne v4, v2, :cond_4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    :cond_4
    move v2, v1

    move v4, v5

    goto :goto_0

    :cond_5
    add-int/lit8 v1, v2, 0x1

    sget-object v5, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    aput-object v5, v3, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lorg/jacoco/core/internal/instr/ProbeInserter;->mv:Lorg/objectweb/asm/MethodVisitor;

    move v1, p1

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    return-void
.end method

.method public final visitIincInsn(II)V
    .locals 2

    iget-object v0, p0, Lorg/jacoco/core/internal/instr/ProbeInserter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-direct {p0, p1}, Lorg/jacoco/core/internal/instr/ProbeInserter;->a(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitIincInsn(II)V

    return-void
.end method

.method public final visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;I)V
    .locals 7

    iget-object v0, p0, Lorg/jacoco/core/internal/instr/ProbeInserter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-direct {p0, p6}, Lorg/jacoco/core/internal/instr/ProbeInserter;->a(I)I

    move-result v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/objectweb/asm/MethodVisitor;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;I)V

    return-void
.end method

.method public visitMaxs(II)V
    .locals 3

    add-int/lit8 v0, p1, 0x3

    iget v1, p0, Lorg/jacoco/core/internal/instr/ProbeInserter;->c:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lorg/jacoco/core/internal/instr/ProbeInserter;->mv:Lorg/objectweb/asm/MethodVisitor;

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/objectweb/asm/MethodVisitor;->visitMaxs(II)V

    return-void
.end method

.method public final visitVarInsn(II)V
    .locals 2

    iget-object v0, p0, Lorg/jacoco/core/internal/instr/ProbeInserter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-direct {p0, p2}, Lorg/jacoco/core/internal/instr/ProbeInserter;->a(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    return-void
.end method
