.class public Lmtopsdk/mtop/transform/bodyhandler/MtopBodyHandlerFactory;
.super Lmtopsdk/mtop/transform/bodyhandler/BodyHandlerFactory;
.source "MtopBodyHandlerFactory.java"


# instance fields
.field private bodydata:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lmtopsdk/mtop/transform/bodyhandler/BodyHandlerFactory;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lmtopsdk/mtop/transform/bodyhandler/MtopBodyHandlerFactory;->bodydata:[B

    .line 12
    iput-object p1, p0, Lmtopsdk/mtop/transform/bodyhandler/MtopBodyHandlerFactory;->bodydata:[B

    .line 13
    return-void
.end method


# virtual methods
.method public createBodyHandler()Lanetwork/channel/IBodyHandler;
    .locals 2

    .prologue
    .line 17
    iget-object v0, p0, Lmtopsdk/mtop/transform/bodyhandler/MtopBodyHandlerFactory;->bodydata:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmtopsdk/mtop/transform/bodyhandler/MtopBodyHandlerFactory;->bodydata:[B

    array-length v0, v0

    if-nez v0, :cond_1

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    return-object v0

    .line 21
    :cond_1
    new-instance v0, Lmtopsdk/mtop/network/DefaultBodyHandlerImpl;

    iget-object v1, p0, Lmtopsdk/mtop/transform/bodyhandler/MtopBodyHandlerFactory;->bodydata:[B

    invoke-direct {v0, v1}, Lmtopsdk/mtop/network/DefaultBodyHandlerImpl;-><init>([B)V

    goto :goto_0
.end method
