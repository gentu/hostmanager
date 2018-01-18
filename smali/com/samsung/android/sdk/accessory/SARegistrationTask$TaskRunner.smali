.class Lcom/samsung/android/sdk/accessory/SARegistrationTask$TaskRunner;
.super Ljava/lang/Object;
.source "SARegistrationTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SARegistrationTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskRunner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/accessory/SARegistrationTask;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/accessory/SARegistrationTask;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SARegistrationTask$TaskRunner;->this$0:Lcom/samsung/android/sdk/accessory/SARegistrationTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/accessory/SARegistrationTask;Lcom/samsung/android/sdk/accessory/SARegistrationTask$TaskRunner;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SARegistrationTask$TaskRunner;-><init>(Lcom/samsung/android/sdk/accessory/SARegistrationTask;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SARegistrationTask$TaskRunner;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SARegistrationTask$TaskRunner;->this$0:Lcom/samsung/android/sdk/accessory/SARegistrationTask;

    invoke-static {v4}, Lcom/samsung/android/sdk/accessory/SARegistrationTask;->access$0(Lcom/samsung/android/sdk/accessory/SARegistrationTask;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/sdk/accessory/SAAdapter;->getDefaultAdapter(Landroid/content/Context;)Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v0

    .line 51
    .local v0, "adapter":Lcom/samsung/android/sdk/accessory/SAAdapter;
    :try_start_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->bindToFramework()V
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SARegistrationTask$TaskRunner;->this$0:Lcom/samsung/android/sdk/accessory/SARegistrationTask;

    invoke-static {v4}, Lcom/samsung/android/sdk/accessory/SARegistrationTask;->access$0(Lcom/samsung/android/sdk/accessory/SARegistrationTask;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/sdk/accessory/SAServiceXmlReader;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/accessory/SAServiceXmlReader;

    move-result-object v2

    .line 57
    .local v2, "serviceXmlReader":Lcom/samsung/android/sdk/accessory/SAServiceXmlReader;
    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAServiceXmlReader;->readXml()[B

    move-result-object v3

    .line 59
    .local v3, "xml":[B
    :try_start_1
    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/accessory/SAAdapter;->registerServices([B)V

    .line 60
    const-string v4, "SARegistrationTask"

    const-string v5, "Services Registered successfully!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    iget-object v5, p0, Lcom/samsung/android/sdk/accessory/SARegistrationTask$TaskRunner;->this$0:Lcom/samsung/android/sdk/accessory/SARegistrationTask;

    monitor-enter v5

    .line 66
    :try_start_2
    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SARegistrationTask$TaskRunner;->this$0:Lcom/samsung/android/sdk/accessory/SARegistrationTask;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/samsung/android/sdk/accessory/SARegistrationTask;->access$1(Lcom/samsung/android/sdk/accessory/SARegistrationTask;Z)V

    .line 65
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 69
    const/4 v4, 0x0

    return-object v4

    .line 52
    .end local v2    # "serviceXmlReader":Lcom/samsung/android/sdk/accessory/SAServiceXmlReader;
    .end local v3    # "xml":[B
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Lcom/samsung/android/sdk/accessory/SAException;
    const-string v4, "SARegistrationTask"

    const-string v5, "Registration failed.Unable to connect to Accessory framework!"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    throw v1

    .line 61
    .end local v1    # "e":Lcom/samsung/android/sdk/accessory/SAException;
    .restart local v2    # "serviceXmlReader":Lcom/samsung/android/sdk/accessory/SAServiceXmlReader;
    .restart local v3    # "xml":[B
    :catch_1
    move-exception v1

    .line 62
    .restart local v1    # "e":Lcom/samsung/android/sdk/accessory/SAException;
    :try_start_3
    const-string v4, "SARegistrationTask"

    const-string v5, "Registration failed!"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 64
    .end local v1    # "e":Lcom/samsung/android/sdk/accessory/SAException;
    :catchall_0
    move-exception v4

    .line 65
    iget-object v5, p0, Lcom/samsung/android/sdk/accessory/SARegistrationTask$TaskRunner;->this$0:Lcom/samsung/android/sdk/accessory/SARegistrationTask;

    monitor-enter v5

    .line 66
    :try_start_4
    iget-object v6, p0, Lcom/samsung/android/sdk/accessory/SARegistrationTask$TaskRunner;->this$0:Lcom/samsung/android/sdk/accessory/SARegistrationTask;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/accessory/SARegistrationTask;->access$1(Lcom/samsung/android/sdk/accessory/SARegistrationTask;Z)V

    .line 65
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 68
    throw v4

    .line 65
    :catchall_1
    move-exception v4

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v4

    :catchall_2
    move-exception v4

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v4
.end method
