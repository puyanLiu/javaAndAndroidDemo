.class public Lorg/objectweb/asm/tree/VarInsnNode;
.super Lorg/objectweb/asm/tree/AbstractInsnNode;


# instance fields
.field public var:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/objectweb/asm/tree/AbstractInsnNode;-><init>(I)V

    iput p2, p0, Lorg/objectweb/asm/tree/VarInsnNode;->var:I

    return-void
.end method


# virtual methods
.method public accept(Lorg/objectweb/asm/MethodVisitor;)V
    .locals 2

    iget v0, p0, Lorg/objectweb/asm/tree/VarInsnNode;->opcode:I

    iget v1, p0, Lorg/objectweb/asm/tree/VarInsnNode;->var:I

    invoke-virtual {p1, v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/tree/VarInsnNode;->acceptAnnotations(Lorg/objectweb/asm/MethodVisitor;)V

    return-void
.end method

.method public clone(Ljava/util/Map;)Lorg/objectweb/asm/tree/AbstractInsnNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/objectweb/asm/tree/LabelNode;",
            "Lorg/objectweb/asm/tree/LabelNode;",
            ">;)",
            "Lorg/objectweb/asm/tree/AbstractInsnNode;"
        }
    .end annotation

    new-instance v0, Lorg/objectweb/asm/tree/VarInsnNode;

    iget v1, p0, Lorg/objectweb/asm/tree/VarInsnNode;->opcode:I

    iget v2, p0, Lorg/objectweb/asm/tree/VarInsnNode;->var:I

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/tree/VarInsnNode;-><init>(II)V

    invoke-virtual {v0, p0}, Lorg/objectweb/asm/tree/VarInsnNode;->cloneAnnotations(Lorg/objectweb/asm/tree/AbstractInsnNode;)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public setOpcode(I)V
    .locals 0

    iput p1, p0, Lorg/objectweb/asm/tree/VarInsnNode;->opcode:I

    return-void
.end method
