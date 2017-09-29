.class public Lorg/objectweb/asm/commons/JSRInlinerAdapter;
.super Lorg/objectweb/asm/tree/MethodNode;

# interfaces
.implements Lorg/objectweb/asm/Opcodes;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/objectweb/asm/tree/LabelNode;",
            "Ljava/util/BitSet;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/BitSet;

.field final dualCitizens:Ljava/util/BitSet;


# direct methods
.method protected constructor <init>(ILorg/objectweb/asm/MethodVisitor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7

    move-object v0, p0

    move v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/objectweb/asm/tree/MethodNode;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->b:Ljava/util/BitSet;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->dualCitizens:Ljava/util/BitSet;

    iput-object p2, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    return-void
.end method

.method public constructor <init>(Lorg/objectweb/asm/MethodVisitor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8

    const/high16 v1, 0x50000

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/objectweb/asm/commons/JSRInlinerAdapter;-><init>(ILorg/objectweb/asm/MethodVisitor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/objectweb/asm/commons/JSRInlinerAdapter;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method private a()V
    .locals 6

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    new-instance v0, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;

    const/4 v1, 0x0

    iget-object v3, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->b:Ljava/util/BitSet;

    invoke-direct {v0, p0, v1, v3}, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;-><init>(Lorg/objectweb/asm/commons/JSRInlinerAdapter;Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;Ljava/util/BitSet;)V

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/objectweb/asm/tree/InsnList;

    invoke-direct {v3}, Lorg/objectweb/asm/tree/InsnList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->a(Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;Ljava/util/List;Lorg/objectweb/asm/tree/InsnList;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iput-object v3, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    iput-object v4, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->tryCatchBlocks:Ljava/util/List;

    iput-object v5, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->localVariables:Ljava/util/List;

    return-void
.end method

.method private a(Ljava/util/BitSet;ILjava/util/BitSet;)V
    .locals 7

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, p3}, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->b(Ljava/util/BitSet;ILjava/util/BitSet;)V

    move v1, v2

    :cond_0
    if-eqz v1, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->tryCatchBlocks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/TryCatchBlockNode;

    iget-object v4, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    iget-object v5, v0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->handler:Lorg/objectweb/asm/tree/LabelNode;

    invoke-virtual {v4, v5}, Lorg/objectweb/asm/tree/InsnList;->indexOf(Lorg/objectweb/asm/tree/AbstractInsnNode;)I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    iget-object v6, v0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->start:Lorg/objectweb/asm/tree/LabelNode;

    invoke-virtual {v5, v6}, Lorg/objectweb/asm/tree/InsnList;->indexOf(Lorg/objectweb/asm/tree/AbstractInsnNode;)I

    move-result v5

    iget-object v6, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    iget-object v0, v0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->end:Lorg/objectweb/asm/tree/LabelNode;

    invoke-virtual {v6, v0}, Lorg/objectweb/asm/tree/InsnList;->indexOf(Lorg/objectweb/asm/tree/AbstractInsnNode;)I

    move-result v0

    invoke-virtual {p1, v5}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    if-ge v5, v0, :cond_3

    invoke-direct {p0, p1, v4, p3}, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->b(Ljava/util/BitSet;ILjava/util/BitSet;)V

    move v0, v2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private a(Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;Ljava/util/List;Lorg/objectweb/asm/tree/InsnList;Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;",
            "Ljava/util/List",
            "<",
            "Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;",
            ">;",
            "Lorg/objectweb/asm/tree/InsnList;",
            "Ljava/util/List",
            "<",
            "Lorg/objectweb/asm/tree/TryCatchBlockNode;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/objectweb/asm/tree/LocalVariableNode;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/16 v8, 0xa7

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v1}, Lorg/objectweb/asm/tree/InsnList;->size()I

    move-result v5

    move v4, v0

    move-object v1, v2

    :goto_0
    if-ge v4, v5, :cond_7

    iget-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/tree/InsnList;->get(I)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    invoke-virtual {p1, v4}, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->findOwner(I)Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;

    move-result-object v3

    invoke-virtual {v0}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getType()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_0

    check-cast v0, Lorg/objectweb/asm/tree/LabelNode;

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->rangeLabel(Lorg/objectweb/asm/tree/LabelNode;)Lorg/objectweb/asm/tree/LabelNode;

    move-result-object v0

    if-eq v0, v1, :cond_6

    invoke-virtual {p3, v0}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    :goto_1
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move-object v1, v0

    goto :goto_0

    :cond_0
    if-ne v3, p1, :cond_6

    invoke-virtual {v0}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v3

    const/16 v6, 0xa9

    if-ne v3, v6, :cond_4

    move-object v0, v2

    move-object v3, p1

    :goto_2
    if-eqz v3, :cond_2

    iget-object v6, v3, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->subroutine:Ljava/util/BitSet;

    invoke-virtual {v6, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v0, v3, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->returnLabel:Lorg/objectweb/asm/tree/LabelNode;

    :cond_1
    iget-object v3, v3, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->previous:Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;

    goto :goto_2

    :cond_2
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Instruction #"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is a RET not owned by any subroutine"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v3, Lorg/objectweb/asm/tree/JumpInsnNode;

    invoke-direct {v3, v8, v0}, Lorg/objectweb/asm/tree/JumpInsnNode;-><init>(ILorg/objectweb/asm/tree/LabelNode;)V

    invoke-virtual {p3, v3}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    move-object v0, v1

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v3

    const/16 v6, 0xa8

    if-ne v3, v6, :cond_5

    check-cast v0, Lorg/objectweb/asm/tree/JumpInsnNode;

    iget-object v3, v0, Lorg/objectweb/asm/tree/JumpInsnNode;->label:Lorg/objectweb/asm/tree/LabelNode;

    iget-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->a:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    new-instance v6, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;

    invoke-direct {v6, p0, p1, v0}, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;-><init>(Lorg/objectweb/asm/commons/JSRInlinerAdapter;Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;Ljava/util/BitSet;)V

    invoke-virtual {v6, v3}, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->gotoLabel(Lorg/objectweb/asm/tree/LabelNode;)Lorg/objectweb/asm/tree/LabelNode;

    move-result-object v0

    new-instance v3, Lorg/objectweb/asm/tree/InsnNode;

    const/4 v7, 0x1

    invoke-direct {v3, v7}, Lorg/objectweb/asm/tree/InsnNode;-><init>(I)V

    invoke-virtual {p3, v3}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    new-instance v3, Lorg/objectweb/asm/tree/JumpInsnNode;

    invoke-direct {v3, v8, v0}, Lorg/objectweb/asm/tree/JumpInsnNode;-><init>(ILorg/objectweb/asm/tree/LabelNode;)V

    invoke-virtual {p3, v3}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    iget-object v0, v6, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->returnLabel:Lorg/objectweb/asm/tree/LabelNode;

    invoke-virtual {p3, v0}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_1

    :cond_5
    invoke-virtual {v0, p1}, Lorg/objectweb/asm/tree/AbstractInsnNode;->clone(Ljava/util/Map;)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    :cond_6
    move-object v0, v1

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->tryCatchBlocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/TryCatchBlockNode;

    iget-object v2, v0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->start:Lorg/objectweb/asm/tree/LabelNode;

    invoke-virtual {p1, v2}, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->rangeLabel(Lorg/objectweb/asm/tree/LabelNode;)Lorg/objectweb/asm/tree/LabelNode;

    move-result-object v2

    iget-object v3, v0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->end:Lorg/objectweb/asm/tree/LabelNode;

    invoke-virtual {p1, v3}, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->rangeLabel(Lorg/objectweb/asm/tree/LabelNode;)Lorg/objectweb/asm/tree/LabelNode;

    move-result-object v3

    if-eq v2, v3, :cond_8

    iget-object v4, v0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->handler:Lorg/objectweb/asm/tree/LabelNode;

    invoke-virtual {p1, v4}, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->gotoLabel(Lorg/objectweb/asm/tree/LabelNode;)Lorg/objectweb/asm/tree/LabelNode;

    move-result-object v4

    if-eqz v2, :cond_9

    if-eqz v3, :cond_9

    if-nez v4, :cond_a

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Internal error!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v5, Lorg/objectweb/asm/tree/TryCatchBlockNode;

    iget-object v0, v0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->type:Ljava/lang/String;

    invoke-direct {v5, v2, v3, v4, v0}, Lorg/objectweb/asm/tree/TryCatchBlockNode;-><init>(Lorg/objectweb/asm/tree/LabelNode;Lorg/objectweb/asm/tree/LabelNode;Lorg/objectweb/asm/tree/LabelNode;Ljava/lang/String;)V

    invoke-interface {p4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->localVariables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_c
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/objectweb/asm/tree/LocalVariableNode;

    iget-object v0, v6, Lorg/objectweb/asm/tree/LocalVariableNode;->start:Lorg/objectweb/asm/tree/LabelNode;

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->rangeLabel(Lorg/objectweb/asm/tree/LabelNode;)Lorg/objectweb/asm/tree/LabelNode;

    move-result-object v4

    iget-object v0, v6, Lorg/objectweb/asm/tree/LocalVariableNode;->end:Lorg/objectweb/asm/tree/LabelNode;

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->rangeLabel(Lorg/objectweb/asm/tree/LabelNode;)Lorg/objectweb/asm/tree/LabelNode;

    move-result-object v5

    if-eq v4, v5, :cond_c

    new-instance v0, Lorg/objectweb/asm/tree/LocalVariableNode;

    iget-object v1, v6, Lorg/objectweb/asm/tree/LocalVariableNode;->name:Ljava/lang/String;

    iget-object v2, v6, Lorg/objectweb/asm/tree/LocalVariableNode;->desc:Ljava/lang/String;

    iget-object v3, v6, Lorg/objectweb/asm/tree/LocalVariableNode;->signature:Ljava/lang/String;

    iget v6, v6, Lorg/objectweb/asm/tree/LocalVariableNode;->index:I

    invoke-direct/range {v0 .. v6}, Lorg/objectweb/asm/tree/LocalVariableNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/tree/LabelNode;Lorg/objectweb/asm/tree/LabelNode;I)V

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_d
    return-void
.end method

.method private b(Ljava/util/BitSet;ILjava/util/BitSet;)V
    .locals 5

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v0, p2}, Lorg/objectweb/asm/tree/InsnList;->get(I)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v1

    invoke-virtual {p1, p2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    :pswitch_0
    return-void

    :cond_1
    invoke-virtual {p1, p2}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {p3, p2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->dualCitizens:Ljava/util/BitSet;

    invoke-virtual {v0, p2}, Ljava/util/BitSet;->set(I)V

    :cond_2
    invoke-virtual {p3, p2}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v1}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getType()I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_3

    invoke-virtual {v1}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v0

    const/16 v2, 0xa8

    if-eq v0, v2, :cond_3

    move-object v0, v1

    check-cast v0, Lorg/objectweb/asm/tree/JumpInsnNode;

    iget-object v2, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    iget-object v0, v0, Lorg/objectweb/asm/tree/JumpInsnNode;->label:Lorg/objectweb/asm/tree/LabelNode;

    invoke-virtual {v2, v0}, Lorg/objectweb/asm/tree/InsnList;->indexOf(Lorg/objectweb/asm/tree/AbstractInsnNode;)I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->b(Ljava/util/BitSet;ILjava/util/BitSet;)V

    :cond_3
    invoke-virtual {v1}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getType()I

    move-result v0

    const/16 v2, 0xb

    if-ne v0, v2, :cond_4

    move-object v0, v1

    check-cast v0, Lorg/objectweb/asm/tree/TableSwitchInsnNode;

    iget-object v2, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    iget-object v3, v0, Lorg/objectweb/asm/tree/TableSwitchInsnNode;->dflt:Lorg/objectweb/asm/tree/LabelNode;

    invoke-virtual {v2, v3}, Lorg/objectweb/asm/tree/InsnList;->indexOf(Lorg/objectweb/asm/tree/AbstractInsnNode;)I

    move-result v2

    invoke-direct {p0, p1, v2, p3}, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->b(Ljava/util/BitSet;ILjava/util/BitSet;)V

    iget-object v2, v0, Lorg/objectweb/asm/tree/TableSwitchInsnNode;->labels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v3, v2

    :goto_1
    if-ltz v3, :cond_4

    iget-object v2, v0, Lorg/objectweb/asm/tree/TableSwitchInsnNode;->labels:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/objectweb/asm/tree/LabelNode;

    iget-object v4, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v4, v2}, Lorg/objectweb/asm/tree/InsnList;->indexOf(Lorg/objectweb/asm/tree/AbstractInsnNode;)I

    move-result v2

    invoke-direct {p0, p1, v2, p3}, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->b(Ljava/util/BitSet;ILjava/util/BitSet;)V

    add-int/lit8 v2, v3, -0x1

    move v3, v2

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getType()I

    move-result v0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_5

    check-cast v1, Lorg/objectweb/asm/tree/LookupSwitchInsnNode;

    iget-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    iget-object v2, v1, Lorg/objectweb/asm/tree/LookupSwitchInsnNode;->dflt:Lorg/objectweb/asm/tree/LabelNode;

    invoke-virtual {v0, v2}, Lorg/objectweb/asm/tree/InsnList;->indexOf(Lorg/objectweb/asm/tree/AbstractInsnNode;)I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->b(Ljava/util/BitSet;ILjava/util/BitSet;)V

    iget-object v0, v1, Lorg/objectweb/asm/tree/LookupSwitchInsnNode;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_2
    if-ltz v2, :cond_5

    iget-object v0, v1, Lorg/objectweb/asm/tree/LookupSwitchInsnNode;->labels:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/LabelNode;

    iget-object v3, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v3, v0}, Lorg/objectweb/asm/tree/InsnList;->indexOf(Lorg/objectweb/asm/tree/AbstractInsnNode;)I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->b(Ljava/util/BitSet;ILjava/util/BitSet;)V

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v0, p2}, Lorg/objectweb/asm/tree/InsnList;->get(I)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_1
    add-int/lit8 p2, p2, 0x1

    iget-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v0}, Lorg/objectweb/asm/tree/InsnList;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa7
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public visitEnd()V
    .locals 5

    iget-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    iget-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->b:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->a(Ljava/util/BitSet;ILjava/util/BitSet;)V

    iget-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/objectweb/asm/tree/LabelNode;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iget-object v4, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v4, v1}, Lorg/objectweb/asm/tree/InsnList;->indexOf(Lorg/objectweb/asm/tree/AbstractInsnNode;)I

    move-result v1

    invoke-direct {p0, v0, v1, v2}, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->a(Ljava/util/BitSet;ILjava/util/BitSet;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->a()V

    :cond_1
    iget-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->accept(Lorg/objectweb/asm/MethodVisitor;)V

    :cond_2
    return-void
.end method

.method public visitJumpInsn(ILorg/objectweb/asm/Label;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lorg/objectweb/asm/tree/MethodNode;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    iget-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v0}, Lorg/objectweb/asm/tree/InsnList;->getLast()Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/JumpInsnNode;

    iget-object v0, v0, Lorg/objectweb/asm/tree/JumpInsnNode;->label:Lorg/objectweb/asm/tree/LabelNode;

    const/16 v1, 0xa8

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->a:Ljava/util/Map;

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
