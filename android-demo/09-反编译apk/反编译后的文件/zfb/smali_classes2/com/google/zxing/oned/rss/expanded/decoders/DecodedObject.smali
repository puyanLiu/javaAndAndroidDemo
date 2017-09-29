.class abstract Lcom/google/zxing/oned/rss/expanded/decoders/DecodedObject;
.super Ljava/lang/Object;


# instance fields
.field private final a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedObject;->a:I

    return-void
.end method


# virtual methods
.method final getNewPosition()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedObject;->a:I

    return v0
.end method
