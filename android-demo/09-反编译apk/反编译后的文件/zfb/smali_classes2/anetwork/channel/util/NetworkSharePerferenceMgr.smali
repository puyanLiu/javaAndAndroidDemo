.class public Lanetwork/channel/util/NetworkSharePerferenceMgr;
.super Ljava/lang/Object;
.source "NetworkSharePerferenceMgr.java"


# static fields
.field private static a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    sput-object v0, Lanetwork/channel/util/NetworkSharePerferenceMgr;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Ljava/lang/String;)J
    .locals 3

    .prologue
    .line 26
    sget-object v0, Lanetwork/channel/util/NetworkSharePerferenceMgr;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 27
    const-wide/16 v0, 0x0

    .line 30
    :goto_0
    return-wide v0

    .line 29
    :cond_0
    sget-object v0, Lanetwork/channel/util/NetworkSharePerferenceMgr;->a:Landroid/content/Context;

    const-string/jumbo v1, "network"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 30
    const-wide/16 v1, -0x1

    invoke-interface {v0, p0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 9
    sput-object p0, Lanetwork/channel/util/NetworkSharePerferenceMgr;->a:Landroid/content/Context;

    .line 10
    return-void
.end method

.method public static a(Ljava/lang/String;J)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 12
    sget-object v1, Lanetwork/channel/util/NetworkSharePerferenceMgr;->a:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 22
    :cond_0
    :goto_0
    return v0

    .line 15
    :cond_1
    sget-object v1, Lanetwork/channel/util/NetworkSharePerferenceMgr;->a:Landroid/content/Context;

    const-string/jumbo v2, "network"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 18
    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 19
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 20
    const/4 v0, 0x1

    goto :goto_0
.end method
