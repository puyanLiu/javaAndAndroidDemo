.class public Lcom/spdu/httpdns/util/HostShareIp;
.super Ljava/lang/Object;
.source "HostShareIp.java"


# direct methods
.method public static a(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/spdu/httpdns/HttpDnsOrigin;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/spdu/httpdns/HttpDnsOrigin;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x3

    const/4 v3, 0x0

    .line 15
    if-nez p0, :cond_1

    .line 16
    const-string/jumbo v0, "[putOldIpAtFirst] - newOriginList null "

    invoke-static {v0}, Lcom/spdu/httpdns/HttpDnsLog;->b(Ljava/lang/String;)V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 19
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v9, :cond_4

    .line 20
    rem-int/lit8 v2, p2, 0x2

    .line 21
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spdu/httpdns/HttpDnsOrigin;

    .line 22
    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spdu/httpdns/HttpDnsOrigin;

    .line 23
    invoke-virtual {v0}, Lcom/spdu/httpdns/HttpDnsOrigin;->a()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "\\."

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 24
    invoke-virtual {v1}, Lcom/spdu/httpdns/HttpDnsOrigin;->a()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "\\."

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 25
    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    array-length v6, v4

    if-ne v6, v10, :cond_2

    array-length v6, v5

    if-eq v6, v10, :cond_3

    .line 27
    :cond_2
    const-string/jumbo v0, "ipSegment1 error "

    invoke-static {v0}, Lcom/spdu/httpdns/HttpDnsLog;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 30
    :cond_3
    if-nez v2, :cond_5

    .line 31
    aget-object v2, v4, v7

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v4, v5, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-le v2, v4, :cond_4

    .line 33
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 34
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_4
    :goto_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spdu/httpdns/HttpDnsOrigin;

    .line 54
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v9, :cond_0

    move v2, v3

    .line 55
    :goto_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 56
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spdu/httpdns/HttpDnsOrigin;

    .line 57
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/spdu/httpdns/HttpDnsOrigin;->a()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 60
    invoke-virtual {v1}, Lcom/spdu/httpdns/HttpDnsOrigin;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/spdu/httpdns/HttpDnsOrigin;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 61
    if-eqz v2, :cond_0

    .line 63
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 66
    invoke-virtual {p0, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 38
    :cond_5
    if-ne v2, v8, :cond_4

    .line 39
    aget-object v2, v4, v7

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v4, v5, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 41
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 42
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 55
    :cond_6
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2
.end method
