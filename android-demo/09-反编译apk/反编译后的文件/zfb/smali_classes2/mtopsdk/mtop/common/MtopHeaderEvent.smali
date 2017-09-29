.class public Lmtopsdk/mtop/common/MtopHeaderEvent;
.super Lmtopsdk/mtop/common/MtopEvent;
.source "MtopHeaderEvent.java"


# instance fields
.field private code:I

.field private header:Ljava/util/Map;
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


# direct methods
.method public constructor <init>(ILjava/util/Map;)V
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
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Lmtopsdk/mtop/common/MtopEvent;-><init>()V

    .line 24
    iput p1, p0, Lmtopsdk/mtop/common/MtopHeaderEvent;->code:I

    .line 25
    iput-object p2, p0, Lmtopsdk/mtop/common/MtopHeaderEvent;->header:Ljava/util/Map;

    .line 26
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lmtopsdk/mtop/common/MtopHeaderEvent;->code:I

    return v0
.end method

.method public getHeader()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lmtopsdk/mtop/common/MtopHeaderEvent;->header:Ljava/util/Map;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lmtopsdk/mtop/common/MtopHeaderEvent;->code:I

    .line 38
    return-void
.end method

.method public setHeader(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 49
    iput-object p1, p0, Lmtopsdk/mtop/common/MtopHeaderEvent;->header:Ljava/util/Map;

    .line 50
    return-void
.end method
