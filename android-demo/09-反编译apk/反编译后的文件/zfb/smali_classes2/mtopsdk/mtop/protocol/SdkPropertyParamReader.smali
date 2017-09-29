.class public Lmtopsdk/mtop/protocol/SdkPropertyParamReader;
.super Ljava/lang/Object;
.source "SdkPropertyParamReader.java"

# interfaces
.implements Lmtopsdk/mtop/protocol/ParamReader;


# instance fields
.field private key:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lmtopsdk/mtop/protocol/SdkPropertyParamReader;->key:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lmtopsdk/mtop/protocol/SdkPropertyParamReader;->value:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lmtopsdk/mtop/protocol/SdkPropertyParamReader;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lmtopsdk/mtop/protocol/SdkPropertyParamReader;->value:Ljava/lang/String;

    return-object v0
.end method
