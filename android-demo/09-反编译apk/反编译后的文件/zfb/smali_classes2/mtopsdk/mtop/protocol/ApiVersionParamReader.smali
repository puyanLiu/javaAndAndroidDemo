.class public Lmtopsdk/mtop/protocol/ApiVersionParamReader;
.super Ljava/lang/Object;
.source "ApiVersionParamReader.java"

# interfaces
.implements Lmtopsdk/mtop/protocol/ParamReader;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lmtopsdk/mtop/protocol/ApiVersionParamReader;->value:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    const-string/jumbo v0, "v"

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lmtopsdk/mtop/protocol/ApiVersionParamReader;->value:Ljava/lang/String;

    return-object v0
.end method
