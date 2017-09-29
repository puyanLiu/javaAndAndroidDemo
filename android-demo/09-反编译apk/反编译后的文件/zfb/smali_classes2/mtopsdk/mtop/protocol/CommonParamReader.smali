.class public Lmtopsdk/mtop/protocol/CommonParamReader;
.super Ljava/lang/Object;
.source "CommonParamReader.java"

# interfaces
.implements Lmtopsdk/mtop/protocol/ParamReader;


# instance fields
.field private key:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lmtopsdk/mtop/protocol/CommonParamReader;->key:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lmtopsdk/mtop/protocol/CommonParamReader;->value:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lmtopsdk/mtop/protocol/CommonParamReader;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lmtopsdk/mtop/protocol/CommonParamReader;->value:Ljava/lang/String;

    return-object v0
.end method
