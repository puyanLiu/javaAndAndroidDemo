.class public Lmtopsdk/mtop/common/MtopProgressEvent;
.super Lmtopsdk/mtop/common/MtopEvent;
.source "MtopProgressEvent.java"


# instance fields
.field desc:Ljava/lang/String;

.field size:I

.field total:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lmtopsdk/mtop/common/MtopEvent;-><init>()V

    .line 20
    iput-object p1, p0, Lmtopsdk/mtop/common/MtopProgressEvent;->desc:Ljava/lang/String;

    .line 21
    iput p2, p0, Lmtopsdk/mtop/common/MtopProgressEvent;->size:I

    .line 22
    iput p3, p0, Lmtopsdk/mtop/common/MtopProgressEvent;->total:I

    .line 23
    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lmtopsdk/mtop/common/MtopProgressEvent;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lmtopsdk/mtop/common/MtopProgressEvent;->size:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lmtopsdk/mtop/common/MtopProgressEvent;->total:I

    return v0
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lmtopsdk/mtop/common/MtopProgressEvent;->desc:Ljava/lang/String;

    .line 31
    return-void
.end method

.method setSize(I)V
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lmtopsdk/mtop/common/MtopProgressEvent;->size:I

    .line 39
    return-void
.end method

.method public setTotal(I)V
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Lmtopsdk/mtop/common/MtopProgressEvent;->total:I

    .line 47
    return-void
.end method
