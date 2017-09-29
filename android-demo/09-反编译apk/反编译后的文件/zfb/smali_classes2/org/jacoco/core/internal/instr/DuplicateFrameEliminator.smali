.class Lorg/jacoco/core/internal/instr/DuplicateFrameEliminator;
.super Lorg/objectweb/asm/MethodVisitor;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Lorg/objectweb/asm/MethodVisitor;)V
    .locals 1

    const/high16 v0, 0x50000

    invoke-direct {p0, v0, p1}, Lorg/objectweb/asm/MethodVisitor;-><init>(ILorg/objectweb/asm/MethodVisitor;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/core/internal/instr/DuplicateFrameEliminator;->a:Z

    return-void
.end method


# virtual methods
.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/core/internal/instr/DuplicateFrameEliminator;->a:Z

    iget-object v0, p0, Lorg/jacoco/core/internal/instr/DuplicateFrameEliminator;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/objectweb/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 6

    iget-boolean v0, p0, Lorg/jacoco/core/internal/instr/DuplicateFrameEliminator;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jacoco/core/internal/instr/DuplicateFrameEliminator;->a:Z

    iget-object v0, p0, Lorg/jacoco/core/internal/instr/DuplicateFrameEliminator;->mv:Lorg/objectweb/asm/MethodVisitor;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public visitIincInsn(II)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/core/internal/instr/DuplicateFrameEliminator;->a:Z

    iget-object v0, p0, Lorg/jacoco/core/internal/instr/DuplicateFrameEliminator;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitIincInsn(II)V

    return-void
.end method

.method public visitInsn(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/core/internal/instr/DuplicateFrameEliminator;->a:Z

    iget-object v0, p0, Lorg/jacoco/core/internal/instr/DuplicateFrameEliminator;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public visitIntInsn(II)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/core/internal/instr/DuplicateFrameEliminator;->a:Z

    iget-object v0, p0, Lorg/jacoco/core/internal/instr/DuplicateFrameEliminator;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitIntInsn(II)V

    return-void
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/core/internal/instr/DuplicateFrameEliminator;->a:Z

    iget-object v0, p0, Lorg/jacoco/core/internal/instr/DuplicateFrameEliminator;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/objectweb/asm/MethodVisitor;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)V

    return-void
.end method

.method public visitJumpInsn(ILorg/objectweb/asm/Label;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/core/internal/instr/DuplicateFrameEliminator;->a:Z

    iget-object v0, p0, Lorg/jacoco/core/internal/instr/DuplicateFrameEliminator;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/core/internal/instr/DuplicateFrameEliminator;->a:Z

    iget-object v0, p0, Lorg/jacoco/core/internal/instr/DuplicateFrameEliminator;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    return-void
.end method

.method public visitLookupSwitchInsn(Lorg/objectweb/asm/Label;[I[Lorg/objectweb/asm/Label;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/core/internal/instr/DuplicateFrameEliminator;->a:Z

    iget-object v0, p0, Lorg/jacoco/core/internal/instr/DuplicateFrameEliminator;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3}, Lorg/objectweb/asm/MethodVisitor;->visitLookupSwitchInsn(Lorg/objectweb/asm/Label;[I[Lorg/objectweb/asm/Label;)V

    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/core/internal/instr/DuplicateFrameEliminator;->a:Z

    iget-object v0, p0, Lorg/jacoco/core/internal/instr/DuplicateFrameEliminator;->mv:Lorg/objectweb/asm/MethodVisitor;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/core/internal/instr/DuplicateFrameEliminator;->a:Z

    iget-object v0, p0, Lorg/jacoco/core/internal/instr/DuplicateFrameEliminator;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    return-void
.end method

.method public varargs visitTableSwitchInsn(IILorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/core/internal/instr/DuplicateFrameEliminator;->a:Z

    iget-object v0, p0, Lorg/jacoco/core/internal/instr/DuplicateFrameEliminator;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/objectweb/asm/MethodVisitor;->visitTableSwitchInsn(IILorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V

    return-void
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/core/internal/instr/DuplicateFrameEliminator;->a:Z

    iget-object v0, p0, Lorg/jacoco/core/internal/instr/DuplicateFrameEliminator;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    return-void
.end method

.method public visitVarInsn(II)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/core/internal/instr/DuplicateFrameEliminator;->a:Z

    iget-object v0, p0, Lorg/jacoco/core/internal/instr/DuplicateFrameEliminator;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    return-void
.end method
