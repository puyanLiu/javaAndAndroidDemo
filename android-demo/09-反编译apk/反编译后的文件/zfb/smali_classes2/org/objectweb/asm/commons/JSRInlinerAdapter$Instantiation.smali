.class Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;
.super Ljava/util/AbstractMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap",
        "<",
        "Lorg/objectweb/asm/tree/LabelNode;",
        "Lorg/objectweb/asm/tree/LabelNode;",
        ">;"
    }
.end annotation


# instance fields
.field final previous:Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;

.field public final rangeTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/objectweb/asm/tree/LabelNode;",
            "Lorg/objectweb/asm/tree/LabelNode;",
            ">;"
        }
    .end annotation
.end field

.field public final returnLabel:Lorg/objectweb/asm/tree/LabelNode;

.field public final subroutine:Ljava/util/BitSet;

.field final synthetic this$0:Lorg/objectweb/asm/commons/JSRInlinerAdapter;


# direct methods
.method constructor <init>(Lorg/objectweb/asm/commons/JSRInlinerAdapter;Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;Ljava/util/BitSet;)V
    .locals 7

    const/4 v2, 0x0

    iput-object p1, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->this$0:Lorg/objectweb/asm/commons/JSRInlinerAdapter;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->rangeTable:Ljava/util/Map;

    iput-object p2, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->previous:Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;

    iput-object p3, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->subroutine:Ljava/util/BitSet;

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->subroutine:Ljava/util/BitSet;

    if-ne v1, p3, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Recursive invocation of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, v0, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->previous:Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_4

    new-instance v0, Lorg/objectweb/asm/tree/LabelNode;

    invoke-direct {v0}, Lorg/objectweb/asm/tree/LabelNode;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->returnLabel:Lorg/objectweb/asm/tree/LabelNode;

    :goto_1
    const/4 v0, 0x0

    iget-object v1, p1, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v1}, Lorg/objectweb/asm/tree/InsnList;->size()I

    move-result v4

    move-object v1, v2

    move v3, v0

    :goto_2
    if-ge v3, v4, :cond_6

    iget-object v0, p1, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v0, v3}, Lorg/objectweb/asm/tree/InsnList;->get(I)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getType()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_5

    check-cast v0, Lorg/objectweb/asm/tree/LabelNode;

    if-nez v1, :cond_2

    new-instance v1, Lorg/objectweb/asm/tree/LabelNode;

    invoke-direct {v1}, Lorg/objectweb/asm/tree/LabelNode;-><init>()V

    :cond_2
    iget-object v5, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->rangeTable:Ljava/util/Map;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_4
    iput-object v2, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->returnLabel:Lorg/objectweb/asm/tree/LabelNode;

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v3}, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->findOwner(I)Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;

    move-result-object v0

    if-ne v0, p0, :cond_3

    move-object v1, v2

    goto :goto_3

    :cond_6
    return-void
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Lorg/objectweb/asm/tree/LabelNode;",
            "Lorg/objectweb/asm/tree/LabelNode;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public findOwner(I)Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;
    .locals 3

    iget-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->subroutine:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->this$0:Lorg/objectweb/asm/commons/JSRInlinerAdapter;

    iget-object v0, v0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->dualCitizens:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->previous:Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;

    move-object v0, p0

    :goto_1
    if-eqz v1, :cond_3

    iget-object v2, v1, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->subroutine:Ljava/util/BitSet;

    invoke-virtual {v2, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    :cond_2
    iget-object v1, v1, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->previous:Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;

    goto :goto_1

    :cond_3
    move-object p0, v0

    goto :goto_0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->get(Ljava/lang/Object;)Lorg/objectweb/asm/tree/LabelNode;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Lorg/objectweb/asm/tree/LabelNode;
    .locals 1

    check-cast p1, Lorg/objectweb/asm/tree/LabelNode;

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->gotoLabel(Lorg/objectweb/asm/tree/LabelNode;)Lorg/objectweb/asm/tree/LabelNode;

    move-result-object v0

    return-object v0
.end method

.method public gotoLabel(Lorg/objectweb/asm/tree/LabelNode;)Lorg/objectweb/asm/tree/LabelNode;
    .locals 1

    iget-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->this$0:Lorg/objectweb/asm/commons/JSRInlinerAdapter;

    iget-object v0, v0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/tree/InsnList;->indexOf(Lorg/objectweb/asm/tree/AbstractInsnNode;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->findOwner(I)Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;

    move-result-object v0

    iget-object v0, v0, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->rangeTable:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/LabelNode;

    return-object v0
.end method

.method public rangeLabel(Lorg/objectweb/asm/tree/LabelNode;)Lorg/objectweb/asm/tree/LabelNode;
    .locals 1

    iget-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->rangeTable:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/LabelNode;

    return-object v0
.end method
