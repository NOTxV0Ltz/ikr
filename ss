 internal class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Введите количество строк в массиве: ");
            int n = int.Parse(Console.ReadLine());

            string[] array = new string[n];

            for (int i = 0; i < n; i++)
            {
                Console.Write($"Введите строку {i + 1}: ");
                array[i] = Console.ReadLine();
            }

            Console.WriteLine("Введенные значения:");
            foreach (string str in array)
            {
                Console.WriteLine(str);
            }

             string[] newArray = new string[array.Length]; 

            int newArrayIndex = 0;
            foreach (string str in array)
            {
                if (str.Length <= 3)
                {
                    newArray[newArrayIndex] = str;
                    newArrayIndex++;
                }
            }

             string[] finalArray = new string[newArrayIndex];
            Array.Copy(newArray, finalArray, newArrayIndex);

            Console.WriteLine("Новый массив из строк, длина которых меньше или равна 3 символам:");
            foreach (string str in finalArray)
            {
                Console.WriteLine(str);
            }

            Console.WriteLine("Нажмите любую клавишу, чтобы завершить...");
            Console.ReadKey();
        }
    }
