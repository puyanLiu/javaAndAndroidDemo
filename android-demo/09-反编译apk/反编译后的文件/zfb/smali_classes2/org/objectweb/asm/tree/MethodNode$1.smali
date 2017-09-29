.class Lorg/objectweb/asm/tree/MethodNode$1;
.super Ljava/util/ArrayList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/objectweb/asm/tree/MethodNode;


# direct methods
.method constructor <init>(Lorg/objectweb/asm/tree/MethodNode;I)V
    .locals 0

    iput-object p1, p0, Lorg/objectweb/asm/tree/MethodNode$1;->this$0:Lorg/objectweb/asm/tree/MethodNode;

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode$1;->this$0:Lorg/objectweb/asm/tree/MethodNode;

    iput-object p1, v0, Lorg/objectweb/asm/tree/MethodNode;->annotationDefault:Ljava/lang/Object;

    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
