.class public Lmtopsdk/mtop/cache/CacheEntity;
.super Ljava/lang/Object;
.source "CacheEntity.java"


# instance fields
.field private apiCacheSwitchOpen:Z

.field private responseSource:Lmtopsdk/mtop/domain/ResponseSource;


# direct methods
.method public constructor <init>(ZLmtopsdk/mtop/domain/ResponseSource;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-boolean p1, p0, Lmtopsdk/mtop/cache/CacheEntity;->apiCacheSwitchOpen:Z

    .line 14
    iput-object p2, p0, Lmtopsdk/mtop/cache/CacheEntity;->responseSource:Lmtopsdk/mtop/domain/ResponseSource;

    .line 16
    return-void
.end method


# virtual methods
.method public getResponseSource()Lmtopsdk/mtop/domain/ResponseSource;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lmtopsdk/mtop/cache/CacheEntity;->responseSource:Lmtopsdk/mtop/domain/ResponseSource;

    return-object v0
.end method

.method public isApiCacheSwitchOpen()Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lmtopsdk/mtop/cache/CacheEntity;->apiCacheSwitchOpen:Z

    return v0
.end method
