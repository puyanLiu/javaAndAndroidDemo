.class public Lorg/objectweb/asm/tree/LocalVariableNode;
.super Ljava/lang/Object;


# instance fields
.field public desc:Ljava/lang/String;

.field public end:Lorg/objectweb/asm/tree/LabelNode;

.field public index:I

.field public name:Ljava/lang/String;

.field public signature:Ljava/lang/String;

.field public start:Lorg/objectweb/asm/tree/LabelNode;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/tree/LabelNode;Lorg/objectweb/asm/tree/LabelNode;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/objectweb/asm/tree/LocalVariableNode;->name:Ljava/lang/String;

    iput-object p2, p0, Lorg/objectweb/asm/tree/LocalVariableNode;->desc:Ljava/lang/String;

    iput-object p3, p0, Lorg/objectweb/asm/tree/LocalVariableNode;->signature:Ljava/lang/String;

    iput-object p4, p0, Lorg/objectweb/asm/tree/LocalVariableNode;->start:Lorg/objectweb/asm/tree/LabelNode;

    iput-object p5, p0, Lorg/objectweb/asm/tree/LocalVariableNode;->end:Lorg/objectweb/asm/tree/LabelNode;

    iput p6, p0, Lorg/objectweb/asm/tree/LocalVariableNode;->index:I

    return-void
.end method


# virtual methods
.method public accept(Lorg/objectweb/asm/MethodVisitor;)V
    .locals 7

    iget-object v1, p0, Lorg/objectweb/asm/tree/LocalVariableNode;->name:Ljava/lang/String;

    iget-object v2, p0, Lorg/objectweb/asm/tree/LocalVariableNode;->desc:Ljava/lang/String;

    iget-object v3, p0, Lorg/objectweb/asm/tree/LocalVariableNode;->signature:Ljava/lang/String;

    iget-object v0, p0, Lorg/objectweb/asm/tree/LocalVariableNode;->start:Lorg/objectweb/asm/tree/LabelNode;

    invoke-virtual {v0}, Lorg/objectweb/asm/tree/LabelNode;->getLabel()Lorg/objectweb/asm/Label;

    move-result-object v4

    iget-object v0, p0, Lorg/objectweb/asm/tree/LocalVariableNode;->end:Lorg/objectweb/asm/tree/LabelNode;

    invoke-virtual {v0}, Lorg/objectweb/asm/tree/LabelNode;->getLabel()Lorg/objectweb/asm/Label;

    move-result-object v5

    iget v6, p0, Lorg/objectweb/asm/tree/LocalVariableNode;->index:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lorg/objectweb/asm/MethodVisitor;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;I)V

    return-void
.end method
