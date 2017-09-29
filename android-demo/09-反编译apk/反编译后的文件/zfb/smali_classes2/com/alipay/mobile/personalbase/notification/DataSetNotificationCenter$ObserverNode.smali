.class public final Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;
.super Ljava/lang/Object;
.source "DataSetNotificationCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObserverNode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;->b:Ljava/util/ArrayList;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;->c:Ljava/util/ArrayList;

    .line 128
    iput-object p1, p0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;->a:Ljava/lang/String;

    .line 129
    return-void
.end method

.method private static a(Landroid/net/Uri;)I
    .locals 1

    .prologue
    .line 144
    if-nez p0, :cond_0

    .line 145
    const/4 v0, 0x0

    .line 147
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static a(Landroid/net/Uri;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    if-eqz p0, :cond_1

    .line 133
    if-nez p1, :cond_0

    .line 134
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 139
    :goto_0
    return-object v0

    .line 136
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 139
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(ZLjava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverCall;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 213
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 220
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode$a;

    .line 216
    if-nez p1, :cond_1

    if-nez p1, :cond_2

    iget-boolean v3, v0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode$a;->b:Z

    if-eqz v3, :cond_2

    .line 217
    :cond_1
    new-instance v3, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverCall;

    iget-object v0, v0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode$a;->a:Lcom/alipay/mobile/personalbase/notification/DataContentObserver;

    invoke-direct {v3, p0, v0, p1}, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverCall;-><init>(Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;Lcom/alipay/mobile/personalbase/notification/DataContentObserver;Z)V

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/net/Uri;ILjava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverCall;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 223
    const/4 v0, 0x0

    .line 224
    invoke-static {p1}, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;->a(Landroid/net/Uri;)I

    move-result v1

    .line 225
    if-lt p2, v1, :cond_1

    .line 227
    const/4 v1, 0x1

    invoke-direct {p0, v1, p3}, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;->a(ZLjava/util/ArrayList;)V

    move-object v1, v0

    .line 234
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 241
    :goto_1
    if-lt v2, v3, :cond_2

    .line 245
    :cond_0
    return-void

    .line 228
    :cond_1
    if-ge p2, v1, :cond_5

    .line 229
    invoke-static {p1, p2}, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;->a(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-direct {p0, v2, p3}, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;->a(ZLjava/util/ArrayList;)V

    move-object v1, v0

    goto :goto_0

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;

    .line 237
    if-eqz v1, :cond_3

    iget-object v4, v0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;->a:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 239
    :cond_3
    add-int/lit8 v4, p2, 0x1

    invoke-virtual {v0, p1, v4, p3}, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;->a(Landroid/net/Uri;ILjava/util/ArrayList;)V

    .line 240
    if-nez v1, :cond_0

    .line 241
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_5
    move-object v1, v0

    goto :goto_0
.end method

.method public final a(Landroid/net/Uri;Lcom/alipay/mobile/personalbase/notification/DataContentObserver;Z)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 152
    move v1, v2

    :goto_0
    invoke-static {p1}, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;->a(Landroid/net/Uri;)I

    move-result v0

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode$a;

    invoke-direct {v1, p0, p2, p3}, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode$a;-><init>(Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;Lcom/alipay/mobile/personalbase/notification/DataContentObserver;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void

    :cond_0
    invoke-static {p1, v1}, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;->a(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid Uri ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") used for observer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SocialSdk_PersonalBase"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v2

    :goto_2
    if-lt v3, v5, :cond_2

    new-instance v3, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;

    invoke-direct {v3, v4}, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object p0, v3

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;

    iget-object v6, v0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;->a:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    add-int/lit8 v1, v1, 0x1

    move-object p0, v0

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2
.end method

.method public final a(Lcom/alipay/mobile/personalbase/notification/DataContentObserver;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 186
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v3

    .line 187
    :goto_0
    if-lt v1, v2, :cond_0

    .line 196
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v3

    .line 197
    :goto_1
    if-lt v1, v2, :cond_1

    .line 205
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 206
    const/4 v0, 0x1

    .line 208
    :goto_3
    return v0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;->a(Lcom/alipay/mobile/personalbase/notification/DataContentObserver;)Z

    move-result v0

    .line 189
    if-eqz v0, :cond_4

    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 191
    add-int/lit8 v0, v1, -0x1

    .line 192
    add-int/lit8 v1, v2, -0x1

    .line 187
    :goto_4
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode$a;

    .line 199
    iget-object v0, v0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode$a;->a:Lcom/alipay/mobile/personalbase/notification/DataContentObserver;

    if-ne v0, p1, :cond_2

    .line 200
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 197
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v0, v3

    .line 208
    goto :goto_3

    :cond_4
    move v0, v1

    move v1, v2

    goto :goto_4
.end method
