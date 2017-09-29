.class final Lcom/alipay/mobile/socialsdk/chat/util/e;
.super Landroid/support/v4/util/LruCache;
.source "SmallImageLruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/util/e;->a:Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;

    .line 56
    invoke-direct {p0, p2}, Landroid/support/v4/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, [B

    if-eqz p2, :cond_0

    array-length v0, p2

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/util/LruCache;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method
