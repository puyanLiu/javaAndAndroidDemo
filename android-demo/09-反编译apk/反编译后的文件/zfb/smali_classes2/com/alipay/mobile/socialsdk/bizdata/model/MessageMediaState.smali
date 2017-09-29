.class public Lcom/alipay/mobile/socialsdk/bizdata/model/MessageMediaState;
.super Ljava/lang/Object;
.source "MessageMediaState.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final INIT_READ_STATE:Ljava/lang/String; = "{\"expressionState\":1,\"audioState\":1,\"gameState\":1}"

.field public static final INIT_UNREAD_STATE:Ljava/lang/String; = "{\"expressionState\":0,\"audioState\":0,\"gameState\":0}"

.field public static final INIT_UPLOAD_MESSAGE_STATE:Ljava/lang/String; = "{\"expressionState\":0,\"audioState\":1,\"gameState\":0}"

.field public static final serialVersionUID:J = -0x7b046a4ef0b8e30bL


# instance fields
.field public audioState:I

.field public expressionState:I

.field public gameState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/MessageMediaState;->expressionState:I

    .line 15
    iput v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/MessageMediaState;->audioState:I

    .line 16
    iput v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/MessageMediaState;->gameState:I

    .line 8
    return-void
.end method
