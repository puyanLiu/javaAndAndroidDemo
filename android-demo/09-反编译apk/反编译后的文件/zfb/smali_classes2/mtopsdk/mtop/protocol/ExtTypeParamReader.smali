.class public Lmtopsdk/mtop/protocol/ExtTypeParamReader;
.super Ljava/lang/Object;
.source "ExtTypeParamReader.java"

# interfaces
.implements Lmtopsdk/mtop/protocol/ParamReader;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lmtopsdk/mtop/protocol/ExtTypeParamReader;->value:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const-string/jumbo v0, "exttype"

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lmtopsdk/mtop/protocol/ExtTypeParamReader;->value:Ljava/lang/String;

    return-object v0
.end method
