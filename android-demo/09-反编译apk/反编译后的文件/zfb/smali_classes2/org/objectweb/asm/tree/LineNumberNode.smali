.class public Lorg/objectweb/asm/tree/LineNumberNode;
.super Lorg/objectweb/asm/tree/AbstractInsnNode;


# instance fields
.field public line:I

.field public start:Lorg/objectweb/asm/tree/LabelNode;


# direct methods
.method public constructor <init>(ILorg/objectweb/asm/tree/LabelNode;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/objectweb/asm/tree/AbstractInsnNode;-><init>(I)V

    iput p1, p0, Lorg/objectweb/asm/tree/LineNumberNode;->line:I

    iput-object p2, p0, Lorg/objectweb/asm/tree/LineNumberNode;->start:Lorg/objectweb/asm/tree/LabelNode;

    return-void
.end method


# virtual methods
.method public accept(Lorg/objectweb/asm/MethodVisitor;)V
    .locals 2

    iget v0, p0, Lorg/objectweb/asm/tree/LineNumberNode;->line:I

    iget-object v1, p0, Lorg/objectweb/asm/tree/LineNumberNode;->start:Lorg/objectweb/asm/tree/LabelNode;

    invoke-virtual {v1}, Lorg/objectweb/asm/tree/LabelNode;->getLabel()Lorg/objectweb/asm/Label;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitLineNumber(ILorg/objectweb/asm/Label;)V

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

    new-instance v0, Lorg/objectweb/asm/tree/LineNumberNode;

    iget v1, p0, Lorg/objectweb/asm/tree/LineNumberNode;->line:I

    iget-object v2, p0, Lorg/objectweb/asm/tree/LineNumberNode;->start:Lorg/objectweb/asm/tree/LabelNode;

    invoke-static {v2, p1}, Lorg/objectweb/asm/tree/LineNumberNode;->clone(Lorg/objectweb/asm/tree/LabelNode;Ljava/util/Map;)Lorg/objectweb/asm/tree/LabelNode;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/tree/LineNumberNode;-><init>(ILorg/objectweb/asm/tree/LabelNode;)V

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method
