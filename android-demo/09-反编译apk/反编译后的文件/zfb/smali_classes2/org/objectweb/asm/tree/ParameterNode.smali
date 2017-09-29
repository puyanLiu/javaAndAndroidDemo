.class public Lorg/objectweb/asm/tree/ParameterNode;
.super Ljava/lang/Object;


# instance fields
.field public access:I

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/objectweb/asm/tree/ParameterNode;->name:Ljava/lang/String;

    iput p2, p0, Lorg/objectweb/asm/tree/ParameterNode;->access:I

    return-void
.end method


# virtual methods
.method public accept(Lorg/objectweb/asm/MethodVisitor;)V
    .locals 2

    iget-object v0, p0, Lorg/objectweb/asm/tree/ParameterNode;->name:Ljava/lang/String;

    iget v1, p0, Lorg/objectweb/asm/tree/ParameterNode;->access:I

    invoke-virtual {p1, v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitParameter(Ljava/lang/String;I)V

    return-void
.end method
