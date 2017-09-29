.class public Lmtopsdk/mtop/protocol/DataParamReader;
.super Ljava/lang/Object;
.source "DataParamReader.java"

# interfaces
.implements Lmtopsdk/mtop/protocol/ParamReader;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lmtopsdk/mtop/protocol/DataParamReader;->value:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    const-string/jumbo v0, "data"

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lmtopsdk/mtop/protocol/DataParamReader;->value:Ljava/lang/String;

    return-object v0
.end method
