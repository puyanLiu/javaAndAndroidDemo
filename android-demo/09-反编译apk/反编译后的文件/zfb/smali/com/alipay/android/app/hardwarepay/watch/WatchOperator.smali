.class public Lcom/alipay/android/app/hardwarepay/watch/WatchOperator;
.super Ljava/lang/Object;
.source "WatchOperator.java"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/hardwarepay/watch/WatchOperator;->a:I

    .line 21
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 33
    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 34
    return-void
.end method
