.class public Lmtopsdk/mtop/network/DefaultBodyHandlerImpl;
.super Ljava/lang/Object;
.source "DefaultBodyHandlerImpl.java"

# interfaces
.implements Lanetwork/channel/IBodyHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.DefaultHttpBodyHandler"


# instance fields
.field private isCompleted:Z

.field private postData:[B

.field private postedLength:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-boolean v0, p0, Lmtopsdk/mtop/network/DefaultBodyHandlerImpl;->isCompleted:Z

    .line 10
    iput v0, p0, Lmtopsdk/mtop/network/DefaultBodyHandlerImpl;->postedLength:I

    .line 14
    iput-object p1, p0, Lmtopsdk/mtop/network/DefaultBodyHandlerImpl;->postData:[B

    .line 15
    return-void
.end method


# virtual methods
.method public isCompleted()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    iget-boolean v0, p0, Lmtopsdk/mtop/network/DefaultBodyHandlerImpl;->isCompleted:Z

    if-eqz v0, :cond_0

    .line 49
    iput-boolean v1, p0, Lmtopsdk/mtop/network/DefaultBodyHandlerImpl;->isCompleted:Z

    .line 50
    iput v1, p0, Lmtopsdk/mtop/network/DefaultBodyHandlerImpl;->postedLength:I

    .line 51
    const/4 v0, 0x1

    .line 53
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lmtopsdk/mtop/network/DefaultBodyHandlerImpl;->isCompleted:Z

    goto :goto_0
.end method

.method public read([B)I
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 20
    if-eqz p1, :cond_0

    iget-object v0, p0, Lmtopsdk/mtop/network/DefaultBodyHandlerImpl;->postData:[B

    if-eqz v0, :cond_0

    array-length v0, p1

    if-nez v0, :cond_2

    .line 21
    :cond_0
    iput-boolean v5, p0, Lmtopsdk/mtop/network/DefaultBodyHandlerImpl;->isCompleted:Z

    move v0, v2

    .line 39
    :cond_1
    :goto_0
    return v0

    .line 24
    :cond_2
    iget-object v0, p0, Lmtopsdk/mtop/network/DefaultBodyHandlerImpl;->postData:[B

    array-length v3, v0

    .line 25
    iget v0, p0, Lmtopsdk/mtop/network/DefaultBodyHandlerImpl;->postedLength:I

    if-lt v0, v3, :cond_3

    .line 26
    iput-boolean v5, p0, Lmtopsdk/mtop/network/DefaultBodyHandlerImpl;->isCompleted:Z

    move v0, v2

    .line 27
    goto :goto_0

    .line 30
    :cond_3
    array-length v1, p1

    .line 31
    iget v0, p0, Lmtopsdk/mtop/network/DefaultBodyHandlerImpl;->postedLength:I

    sub-int v0, v3, v0

    .line 32
    if-ge v0, v1, :cond_4

    .line 34
    :goto_1
    iget-object v1, p0, Lmtopsdk/mtop/network/DefaultBodyHandlerImpl;->postData:[B

    iget v4, p0, Lmtopsdk/mtop/network/DefaultBodyHandlerImpl;->postedLength:I

    invoke-static {v1, v4, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    iget v1, p0, Lmtopsdk/mtop/network/DefaultBodyHandlerImpl;->postedLength:I

    add-int/2addr v1, v0

    iput v1, p0, Lmtopsdk/mtop/network/DefaultBodyHandlerImpl;->postedLength:I

    .line 36
    iget v1, p0, Lmtopsdk/mtop/network/DefaultBodyHandlerImpl;->postedLength:I

    if-lt v1, v3, :cond_1

    .line 37
    iput-boolean v5, p0, Lmtopsdk/mtop/network/DefaultBodyHandlerImpl;->isCompleted:Z

    goto :goto_0

    :cond_4
    move v0, v1

    .line 32
    goto :goto_1
.end method
