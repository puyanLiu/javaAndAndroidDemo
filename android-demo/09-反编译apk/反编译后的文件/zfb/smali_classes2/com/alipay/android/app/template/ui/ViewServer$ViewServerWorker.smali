.class Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;
.super Ljava/lang/Object;
.source "ViewServer.java"

# interfaces
.implements Lcom/alipay/android/app/template/ui/ViewServer$WindowListener;
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/ui/ViewServer;

.field private b:Ljava/net/Socket;

.field private c:Z

.field private d:Z

.field private final e:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/template/ui/ViewServer;Ljava/net/Socket;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 569
    iput-object p1, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 567
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->e:[Ljava/lang/Object;

    .line 570
    iput-object p2, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->b:Ljava/net/Socket;

    .line 571
    iput-boolean v1, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->c:Z

    .line 572
    iput-boolean v1, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->d:Z

    .line 573
    return-void
.end method

.method private a(I)Landroid/view/View;
    .locals 3

    .prologue
    .line 689
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-static {v0}, Lcom/alipay/android/app/template/ui/ViewServer;->a(Lcom/alipay/android/app/template/ui/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 693
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-static {v0}, Lcom/alipay/android/app/template/ui/ViewServer;->b(Lcom/alipay/android/app/template/ui/ViewServer;)Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 695
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-static {v1}, Lcom/alipay/android/app/template/ui/ViewServer;->a(Lcom/alipay/android/app/template/ui/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 712
    :goto_0
    return-object v0

    .line 694
    :catchall_0
    move-exception v0

    .line 695
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-static {v1}, Lcom/alipay/android/app/template/ui/ViewServer;->a(Lcom/alipay/android/app/template/ui/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 696
    throw v0

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-static {v0}, Lcom/alipay/android/app/template/ui/ViewServer;->a(Lcom/alipay/android/app/template/ui/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 703
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-static {v0}, Lcom/alipay/android/app/template/ui/ViewServer;->c(Lcom/alipay/android/app/template/ui/ViewServer;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_2

    .line 709
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-static {v0}, Lcom/alipay/android/app/template/ui/ViewServer;->a(Lcom/alipay/android/app/template/ui/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 712
    const/4 v0, 0x0

    goto :goto_0

    .line 703
    :cond_2
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 704
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 705
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 709
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-static {v1}, Lcom/alipay/android/app/template/ui/ViewServer;->a(Lcom/alipay/android/app/template/ui/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    .line 708
    :catchall_1
    move-exception v0

    .line 709
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-static {v1}, Lcom/alipay/android/app/template/ui/ViewServer;->a(Lcom/alipay/android/app/template/ui/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 710
    throw v0
.end method

.method private a(Ljava/net/Socket;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 716
    const/4 v1, 0x1

    .line 717
    const/4 v0, 0x0

    .line 720
    :try_start_0
    iget-object v3, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-static {v3}, Lcom/alipay/android/app/template/ui/ViewServer;->a(Lcom/alipay/android/app/template/ui/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 722
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 723
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v4, 0x2000

    invoke-direct {v3, v5, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-static {v0}, Lcom/alipay/android/app/template/ui/ViewServer;->c(Lcom/alipay/android/app/template/ui/ViewServer;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 732
    const-string/jumbo v0, "DONE.\n"

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 733
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 737
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-static {v0}, Lcom/alipay/android/app/template/ui/ViewServer;->a(Lcom/alipay/android/app/template/ui/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 739
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move v0, v1

    .line 748
    :goto_1
    return v0

    .line 725
    :cond_0
    :try_start_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 726
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 727
    const/16 v5, 0x20

    invoke-virtual {v3, v5}, Ljava/io/BufferedWriter;->write(I)V

    .line 728
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 729
    const/16 v0, 0xa

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 735
    :catch_0
    move-exception v0

    move-object v0, v3

    .line 737
    :goto_2
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-static {v1}, Lcom/alipay/android/app/template/ui/ViewServer;->a(Lcom/alipay/android/app/template/ui/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 739
    if-eqz v0, :cond_2

    .line 741
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move v0, v2

    goto :goto_1

    .line 743
    :catch_1
    move-exception v0

    move v0, v2

    goto :goto_1

    .line 736
    :catchall_0
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    .line 737
    :goto_3
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-static {v1}, Lcom/alipay/android/app/template/ui/ViewServer;->a(Lcom/alipay/android/app/template/ui/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 739
    if-eqz v3, :cond_1

    .line 741
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 743
    :cond_1
    :goto_4
    throw v0

    :catch_2
    move-exception v0

    move v0, v2

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_4

    .line 736
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 735
    :catch_4
    move-exception v1

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private a(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 634
    .line 635
    const/4 v2, 0x0

    .line 639
    const/16 v3, 0x20

    :try_start_0
    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 640
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 641
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    .line 643
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p3, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 644
    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    long-to-int v4, v4

    .line 647
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 648
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p3, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 653
    :goto_0
    invoke-direct {p0, v4}, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a(I)Landroid/view/View;

    move-result-object v3

    .line 654
    if-nez v3, :cond_2

    .line 685
    :goto_1
    return v1

    .line 650
    :cond_1
    const-string/jumbo p3, ""

    goto :goto_0

    .line 659
    :cond_2
    const-class v4, Landroid/view/ViewDebug;

    const-string/jumbo v5, "dispatchCommand"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    .line 660
    const-class v8, Landroid/view/View;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-class v8, Ljava/io/OutputStream;

    aput-object v8, v6, v7

    .line 659
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 661
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 662
    const/4 v5, 0x0

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v3, 0x1

    aput-object p2, v6, v3

    const/4 v3, 0x2

    aput-object p3, v6, v3

    const/4 v3, 0x3

    .line 663
    new-instance v7, Lcom/alipay/android/app/template/ui/ViewServer$UncloseableOutputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/alipay/android/app/template/ui/ViewServer$UncloseableOutputStream;-><init>(Ljava/io/OutputStream;)V

    aput-object v7, v6, v3

    .line 662
    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    invoke-virtual {p1}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v3

    if-nez v3, :cond_6

    .line 666
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    :try_start_1
    const-string/jumbo v2, "DONE\n"

    invoke-virtual {v3, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 668
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 676
    :goto_2
    if-eqz v3, :cond_3

    .line 678
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    :goto_3
    move v1, v0

    .line 685
    goto :goto_1

    .line 672
    :catch_0
    move-exception v0

    move-object v0, v2

    :goto_4
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Could not send command "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 673
    const-string/jumbo v3, " with parameters "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 676
    if-eqz v0, :cond_5

    .line 678
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move v0, v1

    goto :goto_3

    .line 680
    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_3

    .line 675
    :catchall_0
    move-exception v0

    .line 676
    :goto_5
    if-eqz v2, :cond_4

    .line 678
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 680
    :cond_4
    :goto_6
    throw v0

    :catch_2
    move-exception v0

    move v0, v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_6

    .line 675
    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_5

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_5

    .line 672
    :catch_4
    move-exception v0

    move-object v0, v3

    goto :goto_4

    :cond_5
    move v0, v1

    goto :goto_3

    :cond_6
    move-object v3, v2

    goto :goto_2
.end method

.method private b(Ljava/net/Socket;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 752
    const/4 v1, 0x1

    .line 753
    const/4 v0, 0x0

    .line 757
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 758
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v4, 0x2000

    invoke-direct {v3, v5, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 760
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-static {v0}, Lcom/alipay/android/app/template/ui/ViewServer;->d(Lcom/alipay/android/app/template/ui/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 764
    :try_start_2
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-static {v0}, Lcom/alipay/android/app/template/ui/ViewServer;->b(Lcom/alipay/android/app/template/ui/ViewServer;)Landroid/view/View;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 766
    :try_start_3
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-static {v0}, Lcom/alipay/android/app/template/ui/ViewServer;->d(Lcom/alipay/android/app/template/ui/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 769
    if-eqz v4, :cond_0

    .line 770
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-static {v0}, Lcom/alipay/android/app/template/ui/ViewServer;->a(Lcom/alipay/android/app/template/ui/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 772
    :try_start_4
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-static {v0}, Lcom/alipay/android/app/template/ui/ViewServer;->c(Lcom/alipay/android/app/template/ui/ViewServer;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v5, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-static {v5}, Lcom/alipay/android/app/template/ui/ViewServer;->b(Lcom/alipay/android/app/template/ui/ViewServer;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 774
    :try_start_5
    iget-object v5, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-static {v5}, Lcom/alipay/android/app/template/ui/ViewServer;->a(Lcom/alipay/android/app/template/ui/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 777
    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 778
    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(I)V

    .line 779
    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 781
    :cond_0
    const/16 v0, 0xa

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(I)V

    .line 782
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 786
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    move v0, v1

    .line 795
    :goto_0
    return v0

    .line 765
    :catchall_0
    move-exception v0

    .line 766
    :try_start_7
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-static {v1}, Lcom/alipay/android/app/template/ui/ViewServer;->d(Lcom/alipay/android/app/template/ui/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 767
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 784
    :catch_0
    move-exception v0

    move-object v0, v3

    .line 786
    :goto_1
    if-eqz v0, :cond_2

    .line 788
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    move v0, v2

    goto :goto_0

    .line 773
    :catchall_1
    move-exception v0

    .line 774
    :try_start_9
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-static {v1}, Lcom/alipay/android/app/template/ui/ViewServer;->a(Lcom/alipay/android/app/template/ui/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 775
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 785
    :catchall_2
    move-exception v0

    .line 786
    :goto_2
    if-eqz v3, :cond_1

    .line 788
    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 790
    :cond_1
    :goto_3
    throw v0

    :catch_1
    move-exception v0

    move v0, v2

    goto :goto_0

    :catch_2
    move-exception v0

    move v0, v2

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_3

    .line 785
    :catchall_3
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_2

    .line 784
    :catch_4
    move-exception v1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private c()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 813
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-static {v0, p0}, Lcom/alipay/android/app/template/ui/ViewServer;->a(Lcom/alipay/android/app/template/ui/ViewServer;Lcom/alipay/android/app/template/ui/ViewServer$WindowListener;)V

    .line 814
    const/4 v0, 0x0

    .line 816
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    iget-object v5, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->b:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 817
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_1

    .line 845
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 852
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-static {v0, p0}, Lcom/alipay/android/app/template/ui/ViewServer;->b(Lcom/alipay/android/app/template/ui/ViewServer;Lcom/alipay/android/app/template/ui/ViewServer$WindowListener;)V

    .line 854
    :goto_2
    return v2

    .line 820
    :cond_1
    :try_start_3
    iget-object v5, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->e:[Ljava/lang/Object;

    monitor-enter v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 821
    :goto_3
    :try_start_4
    iget-boolean v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->c:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->d:Z

    if-eqz v0, :cond_5

    .line 824
    :cond_2
    iget-boolean v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->c:Z

    if-eqz v0, :cond_8

    .line 825
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->c:Z

    move v4, v2

    .line 828
    :goto_4
    iget-boolean v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->d:Z

    if-eqz v0, :cond_7

    .line 829
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->d:Z

    move v0, v2

    .line 820
    :goto_5
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 833
    if-eqz v4, :cond_3

    .line 834
    :try_start_5
    const-string/jumbo v4, "LIST UPDATE\n"

    invoke-virtual {v1, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 835
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 837
    :cond_3
    if-eqz v0, :cond_0

    .line 838
    const-string/jumbo v0, "FOCUS UPDATE\n"

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 839
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    .line 843
    :goto_6
    if-eqz v0, :cond_4

    .line 847
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 852
    :cond_4
    :goto_7
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-static {v0, p0}, Lcom/alipay/android/app/template/ui/ViewServer;->b(Lcom/alipay/android/app/template/ui/ViewServer;Lcom/alipay/android/app/template/ui/ViewServer$WindowListener;)V

    goto :goto_2

    .line 822
    :cond_5
    :try_start_7
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->e:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 820
    :catchall_0
    move-exception v0

    :try_start_8
    monitor-exit v5

    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 844
    :catchall_1
    move-exception v0

    .line 845
    :goto_8
    if-eqz v1, :cond_6

    .line 847
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 852
    :cond_6
    :goto_9
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-static {v1, p0}, Lcom/alipay/android/app/template/ui/ViewServer;->b(Lcom/alipay/android/app/template/ui/ViewServer;Lcom/alipay/android/app/template/ui/ViewServer$WindowListener;)V

    .line 853
    throw v0

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_9

    :catch_3
    move-exception v0

    goto :goto_1

    .line 844
    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_8

    :catch_4
    move-exception v1

    goto :goto_6

    :cond_7
    move v0, v3

    goto :goto_5

    :cond_8
    move v4, v3

    goto :goto_4
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 799
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->e:[Ljava/lang/Object;

    monitor-enter v1

    .line 800
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->c:Z

    .line 801
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->e:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 799
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 806
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->e:[Ljava/lang/Object;

    monitor-enter v1

    .line 807
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->d:Z

    .line 808
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->e:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 806
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 576
    const/4 v1, 0x0

    .line 578
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->b:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x400

    invoke-direct {v0, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 580
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 585
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 586
    const/4 v2, -0x1

    if-ne v3, v2, :cond_2

    .line 588
    const-string/jumbo v2, ""

    .line 595
    :goto_0
    const-string/jumbo v3, "PROTOCOL"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 596
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->b:Ljava/net/Socket;

    const-string/jumbo v2, "4"

    invoke-static {v1, v2}, Lcom/alipay/android/app/template/ui/ViewServer;->a(Ljava/net/Socket;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    .line 609
    :goto_1
    if-nez v1, :cond_0

    .line 615
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 623
    :goto_2
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->b:Ljava/net/Socket;

    if-eqz v0, :cond_1

    .line 625
    :try_start_3
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 631
    :cond_1
    :goto_3
    return-void

    .line 590
    :cond_2
    const/4 v2, 0x0

    :try_start_4
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 591
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_0

    .line 597
    :cond_3
    const-string/jumbo v3, "SERVER"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 598
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->b:Ljava/net/Socket;

    const-string/jumbo v2, "4"

    invoke-static {v1, v2}, Lcom/alipay/android/app/template/ui/ViewServer;->a(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v1

    goto :goto_1

    .line 599
    :cond_4
    const-string/jumbo v3, "LIST"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 600
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->b:Ljava/net/Socket;

    invoke-direct {p0, v1}, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a(Ljava/net/Socket;)Z

    move-result v1

    goto :goto_1

    .line 601
    :cond_5
    const-string/jumbo v3, "GET_FOCUS"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 602
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->b:Ljava/net/Socket;

    invoke-direct {p0, v1}, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->b(Ljava/net/Socket;)Z

    move-result v1

    goto :goto_1

    .line 603
    :cond_6
    const-string/jumbo v3, "AUTOLIST"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 604
    invoke-direct {p0}, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->c()Z

    move-result v1

    goto :goto_1

    .line 606
    :cond_7
    iget-object v3, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->b:Ljava/net/Socket;

    invoke-direct {p0, v3, v1, v2}, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->a(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v1

    .line 613
    :goto_4
    if-eqz v0, :cond_8

    .line 617
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 623
    :cond_8
    :goto_5
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->b:Ljava/net/Socket;

    if-eqz v0, :cond_1

    .line 625
    :try_start_6
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    .line 626
    :catch_1
    move-exception v0

    .line 627
    const-string/jumbo v1, "ViewServer"

    const-string/jumbo v2, "exception: "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 619
    :catch_2
    move-exception v0

    .line 620
    const-string/jumbo v1, "ViewServer"

    const-string/jumbo v2, "exception: "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 614
    :catchall_0
    move-exception v0

    .line 615
    :goto_6
    if-eqz v1, :cond_9

    .line 617
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 623
    :cond_9
    :goto_7
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->b:Ljava/net/Socket;

    if-eqz v1, :cond_a

    .line 625
    :try_start_8
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;->b:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 630
    :cond_a
    :goto_8
    throw v0

    .line 619
    :catch_3
    move-exception v1

    .line 620
    const-string/jumbo v2, "ViewServer"

    const-string/jumbo v3, "exception: "

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 626
    :catch_4
    move-exception v1

    .line 627
    const-string/jumbo v2, "ViewServer"

    const-string/jumbo v3, "exception: "

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 619
    :catch_5
    move-exception v0

    .line 620
    const-string/jumbo v1, "ViewServer"

    const-string/jumbo v2, "exception: "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 626
    :catch_6
    move-exception v0

    .line 627
    const-string/jumbo v1, "ViewServer"

    const-string/jumbo v2, "exception: "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 614
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_6

    :catch_7
    move-exception v1

    goto :goto_4
.end method
