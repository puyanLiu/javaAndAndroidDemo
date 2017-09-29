.class public Lcom/sina/weibo/sdk/exception/WeiboDialogException;
.super Lcom/sina/weibo/sdk/exception/WeiboException;
.source "WeiboDialogException.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/String;)V

    .line 46
    iput p2, p0, Lcom/sina/weibo/sdk/exception/WeiboDialogException;->a:I

    .line 47
    iput-object p3, p0, Lcom/sina/weibo/sdk/exception/WeiboDialogException;->b:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/sina/weibo/sdk/exception/WeiboDialogException;->a:I

    return v0
.end method

.method public getFailingUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sina/weibo/sdk/exception/WeiboDialogException;->b:Ljava/lang/String;

    return-object v0
.end method
