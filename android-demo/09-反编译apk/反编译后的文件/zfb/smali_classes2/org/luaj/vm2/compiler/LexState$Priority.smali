.class Lorg/luaj/vm2/compiler/LexState$Priority;
.super Ljava/lang/Object;


# instance fields
.field final left:B

.field final right:B


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-byte v0, p1

    iput-byte v0, p0, Lorg/luaj/vm2/compiler/LexState$Priority;->left:B

    int-to-byte v0, p2

    iput-byte v0, p0, Lorg/luaj/vm2/compiler/LexState$Priority;->right:B

    return-void
.end method
