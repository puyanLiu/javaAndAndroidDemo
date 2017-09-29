.class public Lorg/objectweb/asm/tree/FieldInsnNode;
.super Lorg/objectweb/asm/tree/AbstractInsnNode;


# instance fields
.field public desc:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public owner:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/objectweb/asm/tree/AbstractInsnNode;-><init>(I)V

    iput-object p2, p0, Lorg/objectweb/asm/tree/FieldInsnNode;->owner:Ljava/lang/String;

    iput-object p3, p0, Lorg/objectweb/asm/tree/FieldInsnNode;->name:Ljava/lang/String;

    iput-object p4, p0, Lorg/objectweb/asm/tree/FieldInsnNode;->desc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public accept(Lorg/objectweb/asm/MethodVisitor;)V
    .locals 4

    iget v0, p0, Lorg/objectweb/asm/tree/FieldInsnNode;->opcode:I

    iget-object v1, p0, Lorg/objectweb/asm/tree/FieldInsnNode;->owner:Ljava/lang/String;

    iget-object v2, p0, Lorg/objectweb/asm/tree/FieldInsnNode;->name:Ljava/lang/String;

    iget-object v3, p0, Lorg/objectweb/asm/tree/FieldInsnNode;->desc:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/objectweb/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/tree/FieldInsnNode;->acceptAnnotations(Lorg/objectweb/asm/MethodVisitor;)V

    return-void
.end method

.method public clone(Ljava/util/Map;)Lorg/objectweb/asm/tree/AbstractInsnNode;
    .locals 5
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

    new-instance v0, Lorg/objectweb/asm/tree/FieldInsnNode;

    iget v1, p0, Lorg/objectweb/asm/tree/FieldInsnNode;->opcode:I

    iget-object v2, p0, Lorg/objectweb/asm/tree/FieldInsnNode;->owner:Ljava/lang/String;

    iget-object v3, p0, Lorg/objectweb/asm/tree/FieldInsnNode;->name:Ljava/lang/String;

    iget-object v4, p0, Lorg/objectweb/asm/tree/FieldInsnNode;->desc:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/objectweb/asm/tree/FieldInsnNode;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lorg/objectweb/asm/tree/FieldInsnNode;->cloneAnnotations(Lorg/objectweb/asm/tree/AbstractInsnNode;)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public setOpcode(I)V
    .locals 0

    iput p1, p0, Lorg/objectweb/asm/tree/FieldInsnNode;->opcode:I

    return-void
.end method
