defmodule DbService do
  @moduledoc false

  require Logger

  @threads 200

  def drop_table_users do
    MyXQL.query!(:myxql, "DROP TABLE `hsa109`.`users`;")
  end

  @doc false
  def create_users_table_without_index do
    MyXQL.query!(:myxql, "
      CREATE TABLE IF NOT EXISTS `hsa109`.`users` (
        `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
        `birth_date` DATE NOT NULL,
        PRIMARY KEY (`id`),
        UNIQUE INDEX `idusers_UNIQUE` (`id` ASC) VISIBLE);
    ")
  end

  @doc false
  def insert_user_into_table() do
    MyXQL.query!(:myxql, "
      INSERT INTO `hsa109`.`users` (`birth_date`) VALUES
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}'),
        ('#{random_date()}');
    ")
  end

  def start do
    create_users_table_without_index()

    File.open("./time.txt", [:write], fn file ->
      IO.write(file, DateTime.utc_now())
    end)

    make_requests()
  end

  def make_requests(threads \\ @threads) do
    if threads > 0 do
      Enum.each(1..threads, fn _ ->
        Task.Supervisor.start_child(
          DbService.TaskSupervisor,
          fn ->
            case insert_user_into_table() do
              %MyXQL.Result{last_insert_id: last_insert_id} ->
                Logger.info(last_insert_id: last_insert_id)

                if last_insert_id == 100_000 do
                  File.open("./time.txt", [:write], fn file ->
                    IO.write(file, DateTime.utc_now())
                  end)
                end

              error ->
                Logger.error(inspect(error))
            end
          end
        )
      end)
    end

    count = length(Task.Supervisor.children(DbService.TaskSupervisor))

    if count < @threads do
      make_requests(@threads - count)
    else
      make_requests(0)
    end
  end

  def random_date do
    year = Enum.random(1900..2023)
    month = Enum.random(1..12)
    days = Enum.random(1..28)

    "#{year}" <>
      "-" <>
      "#{if(month < 10, do: "0#{month}", else: month)}" <>
      "-" <> "#{if(days < 10, do: "0#{days}", else: days)}"
  end
end
