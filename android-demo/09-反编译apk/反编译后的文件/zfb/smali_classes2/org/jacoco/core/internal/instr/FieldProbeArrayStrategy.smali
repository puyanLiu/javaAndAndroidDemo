.class Lorg/jacoco/core/internal/instr/FieldProbeArrayStrategy;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jacoco/core/internal/instr/IProbeArrayStrategy;


# static fields
.field public static final FRAME_LOCALS_EMPTY:[Ljava/lang/Object;

.field public static final FRAME_STACK_ARRZ:[Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private final c:Z

.field private final d:I

.field private final e:Lorg/jacoco/core/runtime/IExecutionDataAccessorGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "[Z"

    aput-object v1, v0, v2

    sput-object v0, Lorg/jacoco/core/internal/instr/FieldProbeArrayStrategy;->FRAME_STACK_ARRZ:[Ljava/lang/Object;

    new-array v0, v2, [Ljava/lang/Object;

    sput-object v0, Lorg/jacoco/core/internal/instr/FieldProbeArrayStrategy;->FRAME_LOCALS_EMPTY:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;JZILorg/jacoco/core/runtime/IExecutionDataAccessorGenerator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jacoco/core/internal/instr/FieldProbeArrayStrategy;->a:Ljava/lang/String;

    iput-wide p2, p0, Lorg/jacoco/core/internal/instr/FieldProbeArrayStrategy;->b:J

    iput-boolean p4, p0, Lorg/jacoco/core/internal/instr/FieldProbeArrayStrategy;->c:Z

    iput p5, p0, Lorg/jacoco/core/internal/instr/FieldProbeArrayStrategy;->d:I

    iput-object p6, p0, Lorg/jacoco/core/internal/instr/FieldProbeArrayStrategy;->e:Lorg/jacoco/core/runtime/IExecutionDataAccessorGenerator;

    return-void
.end method


# virtual methods
.method public addMembers(Lorg/objectweb/asm/ClassVisitor;I)V
    .locals 13

    const/16 v6, 0x59

    const/4 v12, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    iget v1, p0, Lorg/jacoco/core/internal/instr/FieldProbeArrayStrategy;->d:I

    const-string/jumbo v2, "$jacocoData"

    const-string/jumbo v3, "[Z"

    move-object v0, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/objectweb/asm/FieldVisitor;

    const/16 v1, 0x100a

    const-string/jumbo v2, "$jacocoInit"

    const-string/jumbo v3, "()[Z"

    move-object v0, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/objectweb/asm/MethodVisitor;

    move-result-object v5

    invoke-virtual {v5}, Lorg/objectweb/asm/MethodVisitor;->visitCode()V

    const/16 v0, 0xb2

    iget-object v1, p0, Lorg/jacoco/core/internal/instr/FieldProbeArrayStrategy;->a:Ljava/lang/String;

    const-string/jumbo v2, "$jacocoData"

    const-string/jumbo v3, "[Z"

    invoke-virtual {v5, v0, v1, v2, v3}, Lorg/objectweb/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    new-instance v11, Lorg/objectweb/asm/Label;

    invoke-direct {v11}, Lorg/objectweb/asm/Label;-><init>()V

    const/16 v0, 0xc7

    invoke-virtual {v5, v0, v11}, Lorg/objectweb/asm/MethodVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    const/16 v0, 0x57

    invoke-virtual {v5, v0}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    iget-object v0, p0, Lorg/jacoco/core/internal/instr/FieldProbeArrayStrategy;->e:Lorg/jacoco/core/runtime/IExecutionDataAccessorGenerator;

    iget-wide v1, p0, Lorg/jacoco/core/internal/instr/FieldProbeArrayStrategy;->b:J

    iget-object v3, p0, Lorg/jacoco/core/internal/instr/FieldProbeArrayStrategy;->a:Ljava/lang/String;

    move v4, p2

    invoke-interface/range {v0 .. v5}, Lorg/jacoco/core/runtime/IExecutionDataAccessorGenerator;->generateDataAccessor(JLjava/lang/String;ILorg/objectweb/asm/MethodVisitor;)I

    move-result v0

    invoke-virtual {v5, v6}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    const/16 v1, 0xb3

    iget-object v2, p0, Lorg/jacoco/core/internal/instr/FieldProbeArrayStrategy;->a:Ljava/lang/String;

    const-string/jumbo v3, "$jacocoData"

    const-string/jumbo v4, "[Z"

    invoke-virtual {v5, v1, v2, v3, v4}, Lorg/objectweb/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-boolean v1, p0, Lorg/jacoco/core/internal/instr/FieldProbeArrayStrategy;->c:Z

    if-eqz v1, :cond_0

    const/4 v6, -0x1

    sget-object v8, Lorg/jacoco/core/internal/instr/FieldProbeArrayStrategy;->FRAME_LOCALS_EMPTY:[Ljava/lang/Object;

    const/4 v9, 0x1

    sget-object v10, Lorg/jacoco/core/internal/instr/FieldProbeArrayStrategy;->FRAME_STACK_ARRZ:[Ljava/lang/Object;

    invoke-virtual/range {v5 .. v10}, Lorg/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v5, v11}, Lorg/objectweb/asm/MethodVisitor;->visitLabel(Lorg/objectweb/asm/Label;)V

    const/16 v1, 0xb0

    invoke-virtual {v5, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v5, v0, v7}, Lorg/objectweb/asm/MethodVisitor;->visitMaxs(II)V

    invoke-virtual {v5}, Lorg/objectweb/asm/MethodVisitor;->visitEnd()V

    return-void
.end method

.method public storeInstance(Lorg/objectweb/asm/MethodVisitor;I)I
    .locals 6

    const/16 v1, 0xb8

    iget-object v2, p0, Lorg/jacoco/core/internal/instr/FieldProbeArrayStrategy;->a:Ljava/lang/String;

    const-string/jumbo v3, "$jacocoInit"

    const-string/jumbo v4, "()[Z"

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v0, 0x3a

    invoke-virtual {p1, v0, p2}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x1

    return v0
.end method
