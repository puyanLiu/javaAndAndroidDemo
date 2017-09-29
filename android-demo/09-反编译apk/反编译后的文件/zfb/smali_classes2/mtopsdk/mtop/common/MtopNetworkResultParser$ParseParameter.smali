.class public Lmtopsdk/mtop/common/MtopNetworkResultParser$ParseParameter;
.super Ljava/lang/Object;
.source "MtopNetworkResultParser.java"


# instance fields
.field public bytedata:[B

.field public header:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public responseCode:I


# direct methods
.method public constructor <init>(ILjava/util/Map;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;[B)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lmtopsdk/mtop/common/MtopNetworkResultParser$ParseParameter;->responseCode:I

    .line 42
    iput-object p2, p0, Lmtopsdk/mtop/common/MtopNetworkResultParser$ParseParameter;->header:Ljava/util/Map;

    .line 43
    iput-object p3, p0, Lmtopsdk/mtop/common/MtopNetworkResultParser$ParseParameter;->bytedata:[B

    .line 44
    return-void
.end method
