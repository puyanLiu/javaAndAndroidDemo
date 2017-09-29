.class Lorg/jacoco/core/internal/instr/LocalProbeArrayStrategy;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jacoco/core/internal/instr/IProbeArrayStrategy;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private final c:I

.field private final d:Lorg/jacoco/core/runtime/IExecutionDataAccessorGenerator;


# direct methods
.method constructor <init>(Ljava/lang/String;JILorg/jacoco/core/runtime/IExecutionDataAccessorGenerator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jacoco/core/internal/instr/LocalProbeArrayStrategy;->a:Ljava/lang/String;

    iput-wide p2, p0, Lorg/jacoco/core/internal/instr/LocalProbeArrayStrategy;->b:J

    iput p4, p0, Lorg/jacoco/core/internal/instr/LocalProbeArrayStrategy;->c:I

    iput-object p5, p0, Lorg/jacoco/core/internal/instr/LocalProbeArrayStrategy;->d:Lorg/jacoco/core/runtime/IExecutionDataAccessorGenerator;

    return-void
.end method


# virtual methods
.method public addMembers(Lorg/objectweb/asm/ClassVisitor;I)V
    .locals 0

    return-void
.end method

.method public storeInstance(Lorg/objectweb/asm/MethodVisitor;I)I
    .locals 6

    iget-object v0, p0, Lorg/jacoco/core/internal/instr/LocalProbeArrayStrategy;->d:Lorg/jacoco/core/runtime/IExecutionDataAccessorGenerator;

    iget-wide v1, p0, Lorg/jacoco/core/internal/instr/LocalProbeArrayStrategy;->b:J

    iget-object v3, p0, Lorg/jacoco/core/internal/instr/LocalProbeArrayStrategy;->a:Ljava/lang/String;

    iget v4, p0, Lorg/jacoco/core/internal/instr/LocalProbeArrayStrategy;->c:I

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lorg/jacoco/core/runtime/IExecutionDataAccessorGenerator;->generateDataAccessor(JLjava/lang/String;ILorg/objectweb/asm/MethodVisitor;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-virtual {p1, v1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    return v0
.end method
